.class Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 225
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    const-string/jumbo v0, "wifi_state"

    .line 227
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 229
    :goto_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$1000(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 230
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WIFI_STATE_CHANGED_ACTION received : enabled = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " visibility :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    .line 231
    invoke-static {v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$1000(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardKnoxGuardView"

    .line 230
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$1000(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 233
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$1100(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$string;->kg_knox_guard_wifi_turned_on_toast:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$900(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/String;)V

    .line 234
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;->this$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->access$1000(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
