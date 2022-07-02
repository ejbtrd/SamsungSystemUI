.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBottomAreaShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mOutOfService:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 p1, 0x0

    .line 655
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->mOutOfService:Z

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$302(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z

    .line 695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)V

    .line 696
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    .line 698
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method public onLockModeChanged()V
    .locals 2

    const-string v0, "KeyguardBottomAreaShortcutView"

    const-string/jumbo v1, "onLockModeChanged"

    .line 688
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLayout()V

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 5

    .line 703
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOutOfService()Z

    move-result v0

    .line 705
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->mOutOfService:Z

    if-eq v1, v0, :cond_1

    .line 706
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->mOutOfService:Z

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->isSamsungPhoneShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/ShortcutManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ShortcutManager;->hasShortcut(I)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;IZ)V

    goto :goto_0

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->isSamsungPhoneShortcut()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/ShortcutManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ShortcutManager;->hasShortcut(I)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;IZ)V

    .line 715
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    return-void
.end method

.method public onSimStateChanged(III)V
    .locals 0

    .line 660
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 661
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isIccBlockedPermanently()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p3

    .line 660
    :goto_0
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1602(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z

    .line 662
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 663
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationText()Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 664
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget-boolean p2, p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 665
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 667
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 672
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLayout()V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isUserUnlocked()Z

    move-result v0

    .line 679
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 680
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1802(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z

    .line 682
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserUnlocked() mIsUserUnlocked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBottomAreaShortcutView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    return-void
.end method
