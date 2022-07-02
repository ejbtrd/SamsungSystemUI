.class Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;
.super Landroid/database/ContentObserver;
.source "KeyguardKnoxGuardViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardKnoxGuardViewController;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Landroid/view/inputmethod/InputMethodManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/policy/NetworkController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/os/Handler;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 206
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$600(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$600(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$700(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobileData settings changed mobileDataEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " visibility :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 209
    invoke-static {v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$700(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardKnoxGuardView"

    .line 208
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$700(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$800(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->kg_knox_guard_mobile_data_turned_on_toast:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$900(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$700(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_1

    .line 214
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$700(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
