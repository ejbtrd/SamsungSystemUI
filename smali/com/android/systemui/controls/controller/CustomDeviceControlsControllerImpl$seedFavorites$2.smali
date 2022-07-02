.class final Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;
.super Ljava/lang/Object;
.source "CustomDeviceControlsControllerImpl.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->seedFavorites(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/systemui/controls/controller/SeedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $prefs:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/systemui/controls/controller/SeedResponse;)V
    .locals 3
    .param p1    # Lcom/android/systemui/controls/controller/SeedResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Controls seeded: "

    .line 137
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomDeviceControlsControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/SeedResponse;->getAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->$prefs:Landroid/content/SharedPreferences;

    const-string v2, "prefs"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/SeedResponse;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->access$addPackageToSeededSet(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;Landroid/content/SharedPreferences;Ljava/lang/String;)Lkotlin/Unit;

    .line 140
    iget-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->access$fireControlsUpdate(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V

    .line 142
    iget-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->access$getControlsComponent$p(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)Lcom/android/systemui/controls/dagger/ControlsComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsListingController()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2$1;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2$1;-><init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 136
    check-cast p1, Lcom/android/systemui/controls/controller/SeedResponse;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;->accept(Lcom/android/systemui/controls/controller/SeedResponse;)V

    return-void
.end method
