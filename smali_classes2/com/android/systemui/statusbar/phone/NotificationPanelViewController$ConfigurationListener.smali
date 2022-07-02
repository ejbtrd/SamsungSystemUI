.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigurationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 6624
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 6624
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 6681
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6682
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .line 6655
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$13200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 6657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->initDimens()V

    .line 6660
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v0, :cond_0

    .line 6661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$13300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateMascotParams()V

    .line 6665
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->onDensityOrFontScaleChanged()V

    .line 6668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$13400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/pluginlock/PluginLockMediator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$13400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/pluginlock/PluginLockMediator;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onDensityOrFontScaleChanged()V

    .line 6672
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz p0, :cond_2

    .line 6673
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onDensityOrFontScaleChanged()V

    :cond_2
    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    .line 6649
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$13200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method

.method public onSmallestScreenWidthChanged()V
    .locals 0

    .line 6643
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$13200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .line 6628
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    .line 6629
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$13100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 6632
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$13102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 6634
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$13200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method
