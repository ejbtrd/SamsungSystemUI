.class public interface abstract Lcom/android/systemui/controls/CustomControlInterface;
.super Ljava/lang/Object;
.source "CustomControlInterface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/CustomControlInterface$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getCustomColor()Landroid/content/res/ColorStateList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCustomIconAnimationEndFrame()I
.end method

.method public abstract getCustomIconAnimationJson()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getCustomIconAnimationJsonCache()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getCustomIconAnimationRepeatCount()I
.end method

.method public abstract getCustomIconAnimationStartFrame()I
.end method

.method public abstract getUseCustomIconWithoutPadding()Z
.end method

.method public abstract getUseCustomIconWithoutShadowBg()Z
.end method
