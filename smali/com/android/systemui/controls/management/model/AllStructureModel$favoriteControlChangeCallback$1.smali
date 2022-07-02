.class public final Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;
.super Ljava/lang/Object;
.source "AllStructureModel.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/model/AllStructureModel;-><init>(Landroid/content/res/Resources;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/model/AllStructureModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/model/AllStructureModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;->this$0:Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlInfoChange(Lcom/android/systemui/controls/management/model/ControlInfoForStructure;)V
    .locals 4
    .param p1    # Lcom/android/systemui/controls/management/model/ControlInfoForStructure;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controlInfoForStructure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/ControlInfoForStructure;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/ControlInfoForStructure;->getControlId()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/ControlInfoForStructure;->getFavorite()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;->this$0:Lcom/android/systemui/controls/management/model/AllStructureModel;

    invoke-static {v2}, Lcom/android/systemui/controls/management/model/AllStructureModel;->access$getFavoriteIds$p(Lcom/android/systemui/controls/management/model/AllStructureModel;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;->this$0:Lcom/android/systemui/controls/management/model/AllStructureModel;

    invoke-static {v2}, Lcom/android/systemui/controls/management/model/AllStructureModel;->access$getFavoriteIds$p(Lcom/android/systemui/controls/management/model/AllStructureModel;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;->this$0:Lcom/android/systemui/controls/management/model/AllStructureModel;

    invoke-static {v2}, Lcom/android/systemui/controls/management/model/AllStructureModel;->access$getFavoriteIds$p(Lcom/android/systemui/controls/management/model/AllStructureModel;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;->this$0:Lcom/android/systemui/controls/management/model/AllStructureModel;

    invoke-static {v2}, Lcom/android/systemui/controls/management/model/AllStructureModel;->access$getFavoriteIds$p(Lcom/android/systemui/controls/management/model/AllStructureModel;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;->this$0:Lcom/android/systemui/controls/management/model/AllStructureModel;

    invoke-static {v1}, Lcom/android/systemui/controls/management/model/AllStructureModel;->access$getFavoriteIds$p(Lcom/android/systemui/controls/management/model/AllStructureModel;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 64
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;->this$0:Lcom/android/systemui/controls/management/model/AllStructureModel;

    invoke-static {v1}, Lcom/android/systemui/controls/management/model/AllStructureModel;->access$getFavoriteIds$p(Lcom/android/systemui/controls/management/model/AllStructureModel;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;->this$0:Lcom/android/systemui/controls/management/model/AllStructureModel;

    invoke-static {p0}, Lcom/android/systemui/controls/management/model/AllStructureModel;->access$getFavoriteControlChangeMainCallback$p(Lcom/android/systemui/controls/management/model/AllStructureModel;)Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;->onControlInfoChange(Lcom/android/systemui/controls/management/model/ControlInfoForStructure;)V

    return-void
.end method
