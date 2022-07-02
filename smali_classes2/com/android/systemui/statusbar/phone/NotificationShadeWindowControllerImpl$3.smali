.class Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$3;
.super Ljava/lang/Object;
.source "NotificationShadeWindowControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

.field final synthetic val$keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$3;->val$keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 345
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$202(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Z)Z

    goto :goto_0

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$3;->val$keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardScreenRotationAllowed()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    .line 348
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 347
    :cond_1
    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$202(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Z)Z

    .line 350
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)Z

    move-result p1

    if-eq v0, p1, :cond_2

    .line 351
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->access$500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$State;)V

    :cond_2
    return-void
.end method
