.class final Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl;->replaceFavoritesForComponent(Lcom/android/systemui/controls/controller/ComponentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/controller/ComponentInfo;Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->$componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 661
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->$componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/Favorites;->replaceControls(Lcom/android/systemui/controls/controller/ComponentInfo;)V

    .line 662
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_AUTO_ADD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getAutoAddList$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->$componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getAutoAddList$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/controls/controller/Favorites;->addFavorites(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    .line 665
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getPersistenceWrapper$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    return-void
.end method
