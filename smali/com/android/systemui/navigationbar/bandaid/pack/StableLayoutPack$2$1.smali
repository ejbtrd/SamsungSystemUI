.class final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;
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

.field final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->accept(Ljava/util/Map;)V

    return-void
.end method

.method public final accept(Ljava/util/Map;)V
    .locals 6
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

    .line 73
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_BUTTON_SPEC:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 74
    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_BUTTON_ORIENTATION:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 75
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DISPLAY_ID:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 76
    sget-boolean v4, Lcom/android/systemui/BasicRune;->BASIC_FOLDERBLE_TYPE_FLIP:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    if-ne v2, v5, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v4, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_SUPPORT_SUBSCREEN_NAVBAR:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {v2, v4}, Lcom/android/systemui/navigationbar/store/NavBarStore;->isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 79
    :goto_0
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_RESULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    if-eqz v5, :cond_a

    if-eqz v1, :cond_5

    .line 85
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isMainKey(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_MAIN_KEY_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isExtraKey(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_EXTRA_KEY_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isHomeHandle(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_HOME_HANDLE_HINT_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isKeyMargin(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_KEYMARGIN_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    .line 89
    :cond_4
    sget-object p0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_1

    .line 93
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isMainKey(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_MAIN_KEY_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    .line 94
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isExtraKey(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_EXTRA_KEY_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    .line 95
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isHomeHandle(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_HOME_HANDLE_HINT_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    .line 96
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isKeyMargin(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_SUB_NAVBAR_KEYMARGIN_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    .line 97
    :cond_9
    sget-object p0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_1

    :cond_a
    if-eqz v1, :cond_f

    .line 103
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isMainKey(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_MAIN_KEY_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    .line 104
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isExtraKey(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_EXTRA_KEY_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    .line 105
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isHomeHandle(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_HOME_HANDLE_HINT_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_1

    .line 106
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isKeyMargin(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_KEYMARGIN_WIDTH_LAND:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 107
    :cond_e
    sget-object p0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    .line 111
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isMainKey(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_MAIN_KEY_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 112
    :cond_10
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isExtraKey(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_EXTRA_KEY_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 113
    :cond_11
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isHomeHandle(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_HOME_HANDLE_HINT_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 114
    :cond_12
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->access$isKeyMargin(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->INT_NAVBAR_KEYMARGIN_WIDTH_PORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 115
    :cond_13
    sget-object p0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    const-string/jumbo v0, "when {\n                            subScreen ->\n                                when {\n                                    landscape ->\n                                        when {\n                                            isMainKey(button) -> store.getValue(INT_SUB_NAVBAR_MAIN_KEY_WIDTH_LAND)\n                                            isExtraKey(button) -> store.getValue(INT_SUB_NAVBAR_EXTRA_KEY_WIDTH_LAND)\n                                            isHomeHandle(button) -> store.getValue(INT_SUB_NAVBAR_HOME_HANDLE_HINT_WIDTH_LAND)\n                                            isKeyMargin(button) -> store.getValue(INT_SUB_NAVBAR_KEYMARGIN_WIDTH_LAND)\n                                            else -> it[KEYS_DEFAULT] as Int\n                                        }\n                                    else -> {\n                                        when {\n                                            isMainKey(button) -> store.getValue(INT_SUB_NAVBAR_MAIN_KEY_WIDTH_PORT)\n                                            isExtraKey(button) -> store.getValue(INT_SUB_NAVBAR_EXTRA_KEY_WIDTH_PORT)\n                                            isHomeHandle(button) -> store.getValue(INT_SUB_NAVBAR_HOME_HANDLE_HINT_WIDTH_PORT)\n                                            isKeyMargin(button) -> store.getValue(INT_SUB_NAVBAR_KEYMARGIN_WIDTH_PORT)\n                                            else -> it[KEYS_DEFAULT] as Int\n                                        }\n                                    }\n                                }\n                            landscape ->\n                                when {\n                                    isMainKey(button) -> store.getValue(INT_NAVBAR_MAIN_KEY_WIDTH_LAND)\n                                    isExtraKey(button) -> store.getValue(INT_NAVBAR_EXTRA_KEY_WIDTH_LAND)\n                                    isHomeHandle(button) -> store.getValue(INT_NAVBAR_HOME_HANDLE_HINT_WIDTH_LAND)\n                                    isKeyMargin(button) -> store.getValue(INT_NAVBAR_KEYMARGIN_WIDTH_LAND)\n                                    else -> it[KEYS_DEFAULT] as Int\n                                }\n                            else -> {\n                                when {\n                                    isMainKey(button) -> store.getValue(INT_NAVBAR_MAIN_KEY_WIDTH_PORT)\n                                    isExtraKey(button) -> store.getValue(INT_NAVBAR_EXTRA_KEY_WIDTH_PORT)\n                                    isHomeHandle(button) -> store.getValue(INT_NAVBAR_HOME_HANDLE_HINT_WIDTH_PORT)\n                                    isKeyMargin(button) -> store.getValue(INT_NAVBAR_KEYMARGIN_WIDTH_PORT)\n                                    else -> it[KEYS_DEFAULT] as Int\n                                }\n                            }\n                        }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
