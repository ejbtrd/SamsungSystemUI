.class final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyToUpdateComponent$1;
.super Ljava/lang/Object;
.source "CustomControlsUiControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->notifyToUpdateComponent(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $componentName:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyToUpdateComponent$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyToUpdateComponent$1;->$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyToUpdateComponent$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$loadComponentInfo(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyToUpdateComponent$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getSelectedComponentInfo$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/controls/controller/ComponentInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyToUpdateComponent$1;->$componentName:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$notifyToUpdateComponent$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 442
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 445
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyToUpdateComponent-Skip reload selectedCompInfo: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", updateComp: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CustomControlsUiControllerImpl"

    .line 443
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 449
    :cond_0
    invoke-static {p0, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$reload(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    return-void
.end method
