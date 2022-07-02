.class final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1;
.super Ljava/lang/Object;
.source "CustomControlsUiControllerImpl.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;-><init>(Ldagger/Lazy;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Landroid/content/SharedPreferences;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 139
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getSaLogger$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/controls/ui/util/SALogger;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchSmartThings;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchSmartThings;

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getControlsUtil$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/controls/ui/util/ControlsUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isSecureLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getActivityStarter$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1$1;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    .line 145
    sget-object p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1$2;->INSTANCE:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1$2;

    const/4 v1, 0x1

    .line 142
    invoke-interface {p1, v0, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getLaunchingPendingIntent$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Landroid/app/PendingIntent;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V

    :goto_0
    return-void
.end method
