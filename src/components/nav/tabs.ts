class Tab{
    href: string;
    label: string;

    constructor(href:string, label: string){
        this.href = href;
        this.label = label;
    }
}

export let Tabs: Tab[] = [
    new Tab('/projects/', 'Projects'),
    new Tab('/about/', 'About')
]