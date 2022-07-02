.class public final Lcom/android/systemui/controls/CustomControlInterface$DefaultImpls;
.super Ljava/lang/Object;
.source "CustomControlInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/CustomControlInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getUseCustomIconWithoutPadding(Lcom/android/systemui/controls/CustomControlInterface;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/controls/CustomControlInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static getUseCustomIconWithoutShadowBg(Lcom/android/systemui/controls/CustomControlInterface;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/controls/CustomControlInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
