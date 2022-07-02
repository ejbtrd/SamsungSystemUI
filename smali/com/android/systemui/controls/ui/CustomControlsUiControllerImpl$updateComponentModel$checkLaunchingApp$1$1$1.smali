.class final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateComponentModel$checkLaunchingApp$1$1$1;
.super Ljava/lang/Object;
.source "CustomControlsUiControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateComponentModel$checkLaunchingApp$1;->accept(Landroid/service/controls/ControlsProviderInfo;)V
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

    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateComponentModel$checkLaunchingApp$1$1$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 359
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateComponentModel$checkLaunchingApp$1$1$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getLaunchingPendingIntent$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$updateComponentModel$updateLaunchingAppButton(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/app/PendingIntent;)V

    return-void
.end method
