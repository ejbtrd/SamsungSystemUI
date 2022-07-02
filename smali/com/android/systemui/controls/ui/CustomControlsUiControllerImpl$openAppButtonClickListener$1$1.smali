.class final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1$1;
.super Ljava/lang/Object;
.source "CustomControlsUiControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$openAppButtonClickListener$1$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getLaunchingPendingIntent$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Landroid/app/PendingIntent;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
