.class public Lcom/android/keyguard/KeyguardSecPatternView;
.super Lcom/android/keyguard/KeyguardPatternView;
.source "KeyguardSecPatternView.java"


# instance fields
.field private mAttached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternView;->onAttachedToWindow()V

    .line 34
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DEAD_ZONE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mAttached:Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 42
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DEAD_ZONE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mAttached:Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternView;->onFinishInflate()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 60
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 62
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_DEAD_ZONE:Z

    if-eqz p1, :cond_1

    .line 63
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mAttached:Z

    if-eqz p1, :cond_1

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged() visibility : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardSecPatternView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 67
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "deadzone_v2"

    const-string v0, "3.33%,3.33%,0%"

    .line 69
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/tsp/SemTspStateManager;->setDeadZone(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    .line 71
    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-nez p1, :cond_1

    .line 72
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/tsp/SemTspStateManager;->clearDeadZone(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
