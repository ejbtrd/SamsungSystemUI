.class final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;
.super Ljava/lang/Object;
.source "CustomControlsUiControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->onActionResponse(Landroid/content/ComponentName;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $controlId:Ljava/lang/String;

.field final synthetic $response:I

.field final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;->$controlId:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;->$response:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getControlAdapter$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;->$controlId:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onActionResponse$1;->$response:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->actionResponse(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
