sizes <- factor(c("small", "large", "large", "small", "medium"))
sizes

sizes <- factor(sizes, levels = c("small", "medium", "large"))
sizes

sizes <- ordered(c("small", "large", "large", "small", "medium"))
sizes <- ordered(sizes, levels = c("small", "medium", "large"))
sizes


sizes <- factor(c("small", "large", "large", "small", "medium"))
sizes

sizes <- relevel(sizes, "medium")
sizes

sizes <- relevel(sizes, "small")
sizes


sizes <- factor(c("small", "large", "large", "small", "medium"),
                levels = c("small", "medium", "large"))
sizes

sizes <- factor(c("small", "large", "large", "small", "medium"))
sizes

sizes <- factor(sizes, levels=rev(levels(sizes)))
sizes

