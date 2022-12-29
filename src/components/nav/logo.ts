class Logo{
    src:string;
    width:string;
    height:string;

    constructor(src:string, width: string, height:string){
        this.src = src;
        this.width = width;
        this.height = height;
    }
}

export let current_logo = new Logo('https://raw.githubusercontent.com/reitmas32/portfolio/main/public/assets/logo.png', '35', '35')