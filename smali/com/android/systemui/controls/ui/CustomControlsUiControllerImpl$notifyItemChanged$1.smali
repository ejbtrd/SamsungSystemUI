.class final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;
.super Ljava/lang/Object;
.source "CustomControlsUiControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->notifyItemChanged(ILcom/android/systemui/controls/management/model/MainControlModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $model:Lcom/android/systemui/controls/management/model/MainControlModel;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;ILcom/android/systemui/controls/management/model/MainControlModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    iput p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;->$position:I

    iput-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;->$model:Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 854
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    iget v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;->$position:I

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyItemChanged$1;->$model:Lcom/android/systemui/controls/management/model/MainControlModel;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$notifyItemChanged(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;ILcom/android/systemui/controls/management/model/MainControlModel;)V

    return-void
.end method
