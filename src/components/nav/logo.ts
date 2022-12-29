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

export let current_logo = new Logo('../../public/assets/logo.png', '35', '35')