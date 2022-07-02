.class final Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl;->addFavorites(Landroid/content/ComponentName;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $componentName:Landroid/content/ComponentName;

.field final synthetic $controls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Ljava/util/ArrayList;Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList<",
            "Landroid/service/controls/Control;",
            ">;",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$componentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$controls:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 639
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$controls:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/controls/controller/Favorites;->addFavorites(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getPersistenceWrapper$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    .line 642
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getAutoAddList$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$controls:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 644
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$getCustomUiController$p(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)Lcom/android/systemui/controls/ui/CustomControlsUiController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$componentName:Landroid/content/ComponentName;

    invoke-interface {v0, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiController;->notifyToUpdateComponent(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method
