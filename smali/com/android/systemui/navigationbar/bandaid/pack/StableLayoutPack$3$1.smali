.class final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;
.super Ljava/lang/Object;
.source "StableLayoutPack.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/Map<",
        "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;->accept(Ljava/util/Map;)V

    return-void
.end method

.method public final accept(Ljava/util/Map;)V
    .locals 4
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_BUTTON_ORIENTATION:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 131
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DISPLAY_ID:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 132
    sget-boolean v2, Lcom/android/systemui/BasicRune;->BASIC_FOLDERBLE_TYPE_FLIP:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-ne v1, v3, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v2, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_SUPPORT_SUBSCREEN_NAVBAR:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 135
    :goto_0
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_RESULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    .line 139
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_INFLATE_LAYOUT_SIDE_PADDING_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 140
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_INFLATE_LAYOUT_SIDE_PADDING_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 143
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_INFLATE_LAYOUT_SIDE_PADDING_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 144
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_INFLATE_LAYOUT_SIDE_PADDING_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    const-string/jumbo v0, "when {\n                            subScreen -> {\n                                when {\n                                    landscape -> store.getValue(INT_SUB_INFLATE_LAYOUT_SIDE_PADDING_LAND)\n                                    else -> store.getValue(INT_SUB_INFLATE_LAYOUT_SIDE_PADDING_PORT)\n                                }\n                            }\n                            landscape -> store.getValue(INT_INFLATE_LAYOUT_SIDE_PADDING_LAND)\n                            else -> store.getValue(INT_INFLATE_LAYOUT_SIDE_PADDING_PORT)\n                        }"

    .line 136
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
