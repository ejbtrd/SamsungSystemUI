.class Lcom/android/systemui/qs/buttons/QSSettingsButton$1;
.super Ljava/lang/Object;
.source "QSSettingsButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/buttons/QSSettingsButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/buttons/QSSettingsButton;


# direct methods
.method public static synthetic $r8$lambda$pHAXJsj16qFnNr1q2V9G1G0u794()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/qs/buttons/QSSettingsButton$1;->lambda$onClick$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/buttons/QSSettingsButton;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onClick$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSSettingsButton;->access$000(Lcom/android/systemui/qs/buttons/QSSettingsButton;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    invoke-static {p0}, Lcom/android/systemui/qs/buttons/QSSettingsButton;->access$100(Lcom/android/systemui/qs/buttons/QSSettingsButton;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/qs/buttons/QSSettingsButton$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/qs/buttons/QSSettingsButton$1$$ExternalSyntheticLambda0;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    invoke-static {p0}, Lcom/android/systemui/qs/buttons/QSSettingsButton;->access$200(Lcom/android/systemui/qs/buttons/QSSettingsButton;)V

    .line 63
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1003"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
