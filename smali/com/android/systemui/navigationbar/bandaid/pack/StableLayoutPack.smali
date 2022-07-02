.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;
.super Ljava/lang/Object;
.source "StableLayoutPack.kt"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStableLayoutPack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StableLayoutPack.kt\ncom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack\n+ 2 Band.kt\ncom/android/systemui/navigationbar/bandaid/Band$Companion\n*L\n1#1,269:1\n43#2:270\n43#2:271\n43#2:272\n43#2:273\n43#2:274\n43#2:275\n43#2:276\n43#2:277\n*E\n*S KotlinDebug\n*F\n+ 1 StableLayoutPack.kt\ncom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack\n*L\n31#1:270\n48#1:271\n66#1:272\n123#1:273\n150#1:274\n164#1:275\n194#1:276\n228#1:277\n*E\n"
.end annotation


# instance fields
.field private final mBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/navigationbar/bandaid/Band;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mExtraKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mMainKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 17
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarController;

    const-class v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const-string/jumbo v4, "store"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->mBands:Ljava/util/List;

    const-string v5, "home"

    const-string v6, "back"

    const-string/jumbo v7, "recent"

    const-string v8, "hint_left"

    const-string v9, "hint_center"

    const-string v10, "hint_right"

    .line 26
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->mMainKeyList:Ljava/util/List;

    const-string v6, "menu_ime"

    const-string/jumbo v7, "space"

    const-string v8, "ime_switcher"

    const-string v9, "clipboard"

    const-string v10, "contextual"

    const-string v11, "pin"

    const-string v12, "extra_back"

    const-string v13, "left_remote_view"

    const-string/jumbo v14, "right_remote_view"

    const-string v15, "left"

    const-string/jumbo v16, "right"

    .line 28
    filled-new-array/range {v6 .. v16}, [Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->mExtraKeyList:Ljava/util/List;

    .line 31
    sget-object v5, Lcom/android/systemui/navigationbar/bandaid/Band;->Companion:Lcom/android/systemui/navigationbar/bandaid/Band$Companion;

    .line 43
    new-instance v6, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 32
    sget-boolean v7, Lcom/android/systemui/BasicRune;->NAVBAR_STABLE_LAYOUT:Z

    invoke-virtual {v6, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 33
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v9, "STABLE_LAYOUT_PACK_GET_INFLATE_LAYOUT_ID"

    .line 34
    invoke-virtual {v6, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 35
    sget-object v9, Lcom/android/systemui/navigationbar/store/EventType;->GET_INT_INFLATE_LAYOUT_ID:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v6, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 36
    const-class v9, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    invoke-virtual {v6, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 37
    new-instance v9, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$band$1$1;

    invoke-direct {v9, v1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$band$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v6, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v6

    .line 46
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v6, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 49
    invoke-virtual {v6, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 50
    invoke-virtual {v6, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v9, "STABLE_LAYOUT_PACK_GET_DEFAULT_LAYOUT"

    .line 51
    invoke-virtual {v6, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 52
    sget-object v9, Lcom/android/systemui/navigationbar/store/EventType;->GET_STR_CURRENT_LAYOUT:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v6, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 53
    const-class v9, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    invoke-virtual {v6, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 54
    new-instance v9, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$1;

    invoke-direct {v9, v1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v6, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v6

    .line 64
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v6, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 67
    invoke-virtual {v6, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 68
    invoke-virtual {v6, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v9, "STABLE_LAYOUT_PACK_INFLATE_NAVBAR"

    .line 69
    invoke-virtual {v6, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 70
    sget-object v9, Lcom/android/systemui/navigationbar/store/EventType;->GET_INT_INFLATE_BUTTON_WIDTH:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v6, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 71
    const-class v9, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    invoke-virtual {v6, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 72
    new-instance v9, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;

    invoke-direct {v9, v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$2$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;)V

    invoke-virtual {v6, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v0

    .line 121
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 124
    invoke-virtual {v0, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 125
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v6, "STABLE_LAYOUT_PACK_INFLATE_NAVBAR_SIDE_PADDING"

    .line 126
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 127
    sget-object v6, Lcom/android/systemui/navigationbar/store/EventType;->GET_INT_INFLATE_LAYOUT_SIDE_PADDING:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 128
    const-class v6, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 129
    new-instance v6, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;

    invoke-direct {v6, v1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v0

    .line 148
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 151
    invoke-virtual {v0, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 152
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v6, "STABLE_LAYOUT_PACK_LAYOUT_CONTAINER_CHANGED"

    .line 153
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 154
    sget-object v6, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_LAYOUT_CONTAINER_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 155
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 156
    new-instance v6, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$4$1;

    invoke-direct {v6, v1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$4$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v0

    .line 162
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 165
    invoke-virtual {v0, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 166
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v6, "STABLE_LAYOUT_PACK_CAN_MOVE_CHANGED"

    .line 167
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 168
    sget-object v9, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_CAN_MOVE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v0, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 169
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 170
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 171
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$5$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$5$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v0

    .line 192
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 195
    invoke-virtual {v0, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 196
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    .line 197
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 199
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 200
    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 201
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$6$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$6$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v0

    .line 226
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 229
    invoke-virtual {v0, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 230
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    .line 231
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 233
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 234
    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Companion;->getLOW_PRIORITY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPriority(Ljava/lang/Integer;)V

    .line 235
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$7$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$7$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v0

    .line 247
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final synthetic access$isExtraKey(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->isExtraKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isHomeHandle(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->isHomeHandle(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isKeyMargin(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->isKeyMargin(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isMainKey(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;Ljava/lang/String;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->isMainKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final isExtraKey(Ljava/lang/String;)Z
    .locals 3

    .line 255
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->mExtraKeyList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    const/4 v1, 0x0

    const-string v2, "key"

    invoke-static {p1, v2, v0, p0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private final isHomeHandle(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "home_handle"

    .line 259
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final isKeyMargin(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "gap"

    .line 263
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final isMainKey(Ljava/lang/String;)Z
    .locals 3

    .line 251
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->mMainKeyList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    const/4 v1, 0x0

    const-string v2, "navkey"

    invoke-static {p1, v2, v0, p0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public getBands()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/navigationbar/bandaid/Band;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 267
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->mBands:Ljava/util/List;

    return-object p0
.end method
