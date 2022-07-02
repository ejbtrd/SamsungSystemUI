.class Lcom/android/keyguard/KeyguardHostViewController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardHostViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostViewController;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualDarInnerLockScreenStateChanged(IZ)V
    .locals 1

    .line 207
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$1700(Lcom/android/keyguard/KeyguardHostViewController;)Landroid/widget/FrameLayout;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$id;->bouncer_lock_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p2, :cond_0

    .line 210
    iget-object p2, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardHostViewController;->access$1800(Lcom/android/keyguard/KeyguardHostViewController;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->lock_ic_lock_ddar:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz p1, :cond_1

    .line 212
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$500(Lcom/android/keyguard/KeyguardHostViewController;Z)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardHostViewController;->access$1900(Lcom/android/keyguard/KeyguardHostViewController;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$drawable;->lock_ic_lock_mtrl_00:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz p1, :cond_1

    .line 217
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$500(Lcom/android/keyguard/KeyguardHostViewController;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 197
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 199
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$1600(Lcom/android/keyguard/KeyguardHostViewController;)V

    :cond_0
    return-void
.end method

.method public onLockModeChanged()V
    .locals 4

    .line 151
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$400(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLockModeChanged - deadline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardViewBase"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardHostViewController;->access$500(Lcom/android/keyguard/KeyguardHostViewController;Z)V

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$600(Lcom/android/keyguard/KeyguardHostViewController;)V

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$700(Lcom/android/keyguard/KeyguardHostViewController;)V

    return-void
.end method

.method public onSecurityViewChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    .line 166
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$800(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/CarrierText;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$800(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/CarrierText;

    move-result-object p1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostViewController;->access$400(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForcedLock()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    .line 171
    :cond_1
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz p1, :cond_3

    .line 172
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$900(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$1000(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 173
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$1100(Lcom/android/keyguard/KeyguardHostViewController;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 174
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$900(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$1000(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 176
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$600(Lcom/android/keyguard/KeyguardHostViewController;)V

    goto :goto_1

    .line 178
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$1200(Lcom/android/keyguard/KeyguardHostViewController;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$1302(Lcom/android/keyguard/KeyguardHostViewController;Z)Z

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$1400(Lcom/android/keyguard/KeyguardHostViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$1500(Lcom/android/keyguard/KeyguardHostViewController;)V

    .line 191
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$1600(Lcom/android/keyguard/KeyguardHostViewController;)V

    return-void
.end method

.method public onTrustGrantedWithFlags(II)V
    .locals 4

    .line 123
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eq p2, v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostViewController;->access$100(Lcom/android/keyguard/KeyguardHostViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    move-result v0

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_7

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostViewController;->access$200(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_6

    if-nez v0, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-nez v0, :cond_5

    const-string p1, "KeyguardViewBase"

    const-string v0, "TrustAgent dismissed Keyguard."

    .line 138
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$300(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object p0

    invoke-interface {p0, v3, p2, v3}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->dismiss(ZIZ)Z

    goto :goto_2

    .line 143
    :cond_6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$200(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->playTrustedSound()V

    :cond_7
    :goto_2
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController$1;->this$0:Lcom/android/keyguard/KeyguardHostViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostViewController;->access$000(Lcom/android/keyguard/KeyguardHostViewController;)Lcom/android/keyguard/KeyguardSecurityContainerController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen(Z)V

    return-void
.end method
