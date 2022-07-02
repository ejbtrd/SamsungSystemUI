.class final Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$setCallback$1$1;
.super Ljava/lang/Object;
.source "CustomDeviceControlsControllerImpl.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->setCallback(Lcom/android/systemui/controls/controller/CustomDeviceControlsController$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/systemui/controls/controller/ControlsController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$setCallback$1$1;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/systemui/controls/controller/ControlsController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/controller/ControlsController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-interface {p1}, Lcom/android/systemui/controls/controller/ControlsController;->getFavorites()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$setCallback$1$1;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->access$fireControlsUpdate(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$setCallback$1$1;->accept(Lcom/android/systemui/controls/controller/ControlsController;)V

    return-void
.end method
