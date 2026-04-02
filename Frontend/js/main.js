const API_BASE = "http://127.0.0.1:8000/api";

function buildImagePath(path) {
    if (!path) return "";
    return path;
}

Vue.createApp({
    data() {
        return {
            showsData: [],
            currentView: "shows",
            selectedShowSlug: "",
            selectedCharacter: null,
            loadingShows: true,
            loadingCharacterDetails: false,
            error: null,
            sectionRefs: {}
        };
    },

    computed: {
        filteredShows() {
            if (!this.selectedShowSlug) {
                return this.showsData;
            }

            return this.showsData.filter(show => show.slug === this.selectedShowSlug);
        }
    },

    created() {
        this.getShows();
    },

    methods: {
        getShows() {
            fetch(`${API_BASE}/shows`)
                .then(res => {
                    if (!res.ok) {
                        throw new Error("Failed to fetch the shows.");
                    }

                    return res.json();
                })
                .then(shows => {
                    this.showsData = shows.data.map(show => ({
                        ...show,
                        poster_image: buildImagePath(show.poster_image),
                        characters: show.characters.map(character => ({
                            ...character,
                            character_image: buildImagePath(character.character_image)
                        }))
                    }));
                })
                .catch(err => {
                    this.error = err.message;
                })
                .finally(() => {
                    this.loadingShows = false;
                });
        },

        getCharacter(id) {
            this.loadingCharacterDetails = true;
            this.selectedCharacter = null;
            this.error = null;

            fetch(`${API_BASE}/characters/${id}`)
                .then(res => {
                    if (!res.ok) {
                        throw new Error("Failed to fetch character details.");
                    }

                    return res.json();
                })
                .then(character => {
                    this.selectedCharacter = {
                        ...character.data,
                        character_image: buildImagePath(character.data.character_image)
                    };

                    this.$nextTick(() => {
                        window.scrollTo({
                            top: document.body.scrollHeight,
                            behavior: "smooth"
                        });

                        gsap.from(this.$refs.characterInfoCon, {
                            opacity: 0,
                            y: 20,
                            duration: 0.8,
                            ease: "power2.out"
                        });
                    });
                })
                .catch(err => {
                    this.error = err.message;
                })
                .finally(() => {
                    this.loadingCharacterDetails = false;
                });
        },

        setView(view) {
            this.currentView = view;
            this.selectedCharacter = null;

            this.$nextTick(() => {
                gsap.from(".show-section", {
                    opacity: 0,
                    y: 18,
                    duration: 0.5,
                    stagger: 0.06,
                    ease: "power2.out"
                });
            });
        },

        registerSectionRef(slug, el) {
            if (el) {
                this.sectionRefs[slug] = el;
            }
        }
    },

    watch: {
        selectedShowSlug(newValue) {
            if (!newValue || !this.sectionRefs[newValue]) {
                return;
            }

            this.$nextTick(() => {
                this.sectionRefs[newValue].scrollIntoView({
                    behavior: "smooth",
                    block: "start"
                });
            });
        }
    }
}).mount("#app");