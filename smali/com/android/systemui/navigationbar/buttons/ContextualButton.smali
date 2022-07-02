.class public Lcom/android/systemui/navigationbar/buttons/ContextualButton;
.super Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
.source "ContextualButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/buttons/ContextualButton$ContextButtonListener;
    }
.end annotation


# instance fields
.field private mGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

.field protected final mIconResId:I

.field private mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field protected final mLightContext:Landroid/content/Context;

.field private mListener:Lcom/android/systemui/navigationbar/buttons/ContextualButton$ContextButtonListener;


# direct methods
.method public constructor <init>(ILandroid/content/Context;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 53
    iput-object p2, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mLightContext:Landroid/content/Context;

    .line 54
    iput p3, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconResId:I

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconType;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconResId:I

    .line 61
    iput-object p2, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mLightContext:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/4 p1, 0x4

    .line 63
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method attachToGroup(Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    return-void
.end method

.method protected getNewDrawable(II)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 6

    .line 136
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    if-eqz v0, :cond_0

    .line 137
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->getKeyButtonMapper()Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mLightContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconResId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public hide()Z
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->setVisibility(I)V

    return v1

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getId()I

    move-result p0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->setButtonVisibility(IZ)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setListener(Lcom/android/systemui/navigationbar/buttons/ContextualButton$ContextButtonListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mListener:Lcom/android/systemui/navigationbar/buttons/ContextualButton$ContextButtonListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getImageDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->clearAnimationCallbacks()V

    .line 89
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->resetAnimation()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mListener:Lcom/android/systemui/navigationbar/buttons/ContextualButton$ContextButtonListener;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 93
    :goto_0
    invoke-interface {v0, p0, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButton$ContextButtonListener;->onVisibilityChanged(Lcom/android/systemui/navigationbar/buttons/ContextualButton;Z)V

    :cond_2
    return-void
.end method

.method public show()Z
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->setVisibility(I)V

    return v2

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getId()I

    move-result p0

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->setButtonVisibility(IZ)I

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public updateIcon(II)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconType:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->mIconResId:I

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getImageDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v0

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;->getNewDrawable(II)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->getDarkIntensity()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 78
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    return-void
.end method
