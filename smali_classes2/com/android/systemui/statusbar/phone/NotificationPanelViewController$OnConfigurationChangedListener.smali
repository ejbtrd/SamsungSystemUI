.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;
.super Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;
.source "NotificationPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnConfigurationChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 7059
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 7059
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 7063
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7064
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onConfigurationChanged()V

    .line 7065
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$16500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 7066
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$14200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 7068
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$16502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 7071
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->initDimens()V

    .line 7074
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$14800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->onPanelConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7076
    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz p1, :cond_1

    .line 7077
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$13300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateRes()V

    .line 7080
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7081
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_2
    return-void
.end method
