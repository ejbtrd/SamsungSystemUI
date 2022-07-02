.class final Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2$1;
.super Ljava/lang/Object;
.source "CustomDeviceControlsControllerImpl.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->accept(Lcom/android/systemui/controls/controller/SeedResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/systemui/controls/management/ControlsListingController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2$1;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/systemui/controls/management/ControlsListingController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/management/ControlsListingController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2$1;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->access$getListingCallback$p(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$listingCallback$1;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 142
    check-cast p1, Lcom/android/systemui/controls/management/ControlsListingController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2$1;->accept(Lcom/android/systemui/controls/management/ControlsListingController;)V

    return-void
.end method
