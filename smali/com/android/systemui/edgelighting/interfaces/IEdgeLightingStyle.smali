.class public interface abstract Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;
.super Ljava/lang/Object;
.source "IEdgeLightingStyle.java"


# virtual methods
.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getRoundedIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public abstract isSupportEffect()Z
.end method

.method public abstract isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z
.end method
