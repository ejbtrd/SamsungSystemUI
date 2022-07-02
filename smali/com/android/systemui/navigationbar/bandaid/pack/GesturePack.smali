.class public final Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;
.super Ljava/lang/Object;
.source "GesturePack.kt"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGesturePack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GesturePack.kt\ncom/android/systemui/navigationbar/bandaid/pack/GesturePack\n+ 2 Band.kt\ncom/android/systemui/navigationbar/bandaid/Band$Companion\n*L\n1#1,440:1\n43#2:441\n43#2:442\n43#2:443\n43#2:444\n43#2:445\n43#2:446\n43#2:447\n43#2:448\n43#2:449\n43#2:450\n43#2:451\n43#2:452\n43#2:453\n43#2:454\n43#2:455\n43#2:456\n43#2:457\n43#2:458\n43#2:459\n43#2:460\n*E\n*S KotlinDebug\n*F\n+ 1 GesturePack.kt\ncom/android/systemui/navigationbar/bandaid/pack/GesturePack\n*L\n30#1:441\n45#1:442\n72#1:443\n90#1:444\n113#1:445\n130#1:446\n160#1:447\n188#1:448\n205#1:449\n227#1:450\n242#1:451\n261#1:452\n281#1:453\n295#1:454\n320#1:455\n344#1:456\n362#1:457\n376#1:458\n390#1:459\n416#1:460\n*E\n"
.end annotation


# instance fields
.field private final bands:Ljava/util/List;
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


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 11
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-class v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    const-class v2, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;

    const-class v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const-string/jumbo v4, "store"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;->bands:Ljava/util/List;

    .line 30
    sget-object p0, Lcom/android/systemui/navigationbar/bandaid/Band;->Companion:Lcom/android/systemui/navigationbar/bandaid/Band$Companion;

    .line 43
    new-instance v5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 31
    sget-boolean v6, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    invoke-virtual {v5, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 32
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v8, "GESTURE_PACK_NAVIGATION_MODE_CHANGED"

    .line 33
    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 34
    sget-object v8, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVIGATION_MODE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 35
    invoke-virtual {v5, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 36
    new-instance v8, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$band$1$1;

    invoke-direct {v8, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$band$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v5

    .line 43
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 46
    invoke-virtual {v5, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 47
    invoke-virtual {v5, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v8, "GESTURE_PACK_SET_HINT_GROUP"

    .line 48
    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 49
    sget-object v8, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 50
    const-class v8, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    .line 51
    const-class v9, Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 52
    new-instance v8, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$1$1;

    invoke-direct {v8, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v5

    .line 70
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 73
    invoke-virtual {v5, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 74
    invoke-virtual {v5, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v8, "GESTURE_PACK_START_HINT_VI"

    .line 75
    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 76
    sget-object v8, Lcom/android/systemui/navigationbar/store/EventType;->ON_START_GESTURE_HINT_VI:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 77
    invoke-virtual {v5, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 78
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 79
    new-instance v8, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$2$1;

    invoke-direct {v8, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$2$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v5

    .line 88
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 91
    invoke-virtual {v5, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 92
    invoke-virtual {v5, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v8, "GESTURE_PACK_MOVE_HINT_VI"

    .line 93
    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 94
    sget-object v8, Lcom/android/systemui/navigationbar/store/EventType;->ON_MOVE_GESTURE_HINT_VI:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 95
    invoke-virtual {v5, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 96
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 97
    new-instance v8, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$3$1;

    invoke-direct {v8, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$3$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v5

    .line 111
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 114
    invoke-virtual {v5, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 115
    invoke-virtual {v5, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v8, "GESTURE_PACK_RESET_HINT_VI"

    .line 116
    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 117
    sget-object v8, Lcom/android/systemui/navigationbar/store/EventType;->ON_RESET_GESTURE_HINT_VI:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v5, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 118
    invoke-virtual {v5, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 119
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 120
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$4$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$4$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v5, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v2

    .line 128
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 131
    invoke-virtual {v2, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 132
    invoke-virtual {v2, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v5, "GESTURE_PACK_SET_HINT_VISIBILITY"

    .line 133
    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 134
    sget-object v5, Lcom/android/systemui/navigationbar/store/EventType;->ON_SET_GESTURE_HINT_VISIBILITY:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 135
    const-class v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 136
    const-class v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 137
    new-instance v5, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$5$1;

    invoke-direct {v5, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$5$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v2

    .line 158
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 161
    invoke-virtual {v2, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 162
    invoke-virtual {v2, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v5, "GESTURE_PACK_SET_HINT_VISIBILITY_BY_PAY"

    .line 163
    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 164
    sget-object v5, Lcom/android/systemui/navigationbar/store/EventType;->ON_UPDATE_SPAY_VISIBILITY:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 165
    const-class v5, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 166
    const-class v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 167
    new-instance v5, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$6$1;

    invoke-direct {v5, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$6$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v2

    .line 186
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 189
    sget-boolean v5, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    move v8, v9

    goto :goto_0

    :cond_0
    move v8, v10

    :goto_0
    invoke-virtual {v2, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 190
    invoke-virtual {v2, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v8, "GESTURE_PACK_UPDATE_GAMETOOLS_VISIBILITY"

    .line 191
    invoke-virtual {v2, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 192
    sget-object v8, Lcom/android/systemui/navigationbar/store/EventType;->ON_SET_REMOTEVIEW:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v2, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 193
    const-class v8, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 194
    new-instance v8, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$7$1;

    invoke-direct {v8, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$7$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v2, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v2

    .line 203
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v10

    .line 206
    :goto_1
    invoke-virtual {v2, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 207
    invoke-virtual {v2, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v8, "GESTURE_PACK_SHOW_FLOATING_GAMETOOLS_ICON"

    .line 208
    invoke-virtual {v2, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 209
    sget-object v8, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_TRANSITION_MODE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v2, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 210
    const-class v8, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {v2, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 211
    new-instance v8, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$8$1;

    invoke-direct {v8, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$8$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v2, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v2

    .line 225
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    move v10, v9

    .line 228
    :cond_2
    invoke-virtual {v2, v10}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 229
    invoke-virtual {v2, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v5, "GESTURE_PACK_BLOCKING_GESTURES_ON_GAME"

    .line 230
    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 231
    sget-object v5, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_BLOCKING_GESTURES_ON_GAME:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 232
    invoke-virtual {v2, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 233
    new-instance v5, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$9$1;

    invoke-direct {v5, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$9$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v2

    .line 240
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 243
    invoke-virtual {v2, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 244
    invoke-virtual {v2, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v5, "GESTURE_PACK_SHOW_KEYBOARD_BUTTON"

    .line 245
    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 246
    sget-object v5, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_SHOW_KEYBOARD_BUTTON:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 247
    const-class v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 248
    const-class v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 249
    new-instance v5, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$10$1;

    invoke-direct {v5, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$10$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v2

    .line 259
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 262
    invoke-virtual {v2, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 263
    invoke-virtual {v2, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v5, "GESTURE_PACK_EDGE_BACK_GESTURE_DISABLE_BY_POLICY"

    .line 264
    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 265
    sget-object v5, Lcom/android/systemui/navigationbar/store/EventType;->ON_EDGE_BACK_GESTURE_DISABLED_BY_POLICY_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 266
    invoke-virtual {v2, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 267
    const-class v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 268
    new-instance v5, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$11$1;

    invoke-direct {v5, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$11$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v2

    .line 279
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 282
    invoke-virtual {v2, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 283
    invoke-virtual {v2, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v5, "GESTURE_PACK_GET_EDGE_BACK_GESTURE_DISABLE_BY_POLICY"

    .line 284
    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 285
    sget-object v5, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_EDGE_BACK_GESTURE_DISABLED_BY_POLICY:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v2, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 286
    invoke-virtual {v2, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 287
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$12$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$12$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v0

    .line 293
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 296
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 297
    invoke-virtual {v0, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v2, "GESTURE_PACK_KNOX_HARD_KEY_INTENT_POLICY"

    .line 298
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 299
    sget-object v2, Lcom/android/systemui/navigationbar/store/EventType;->ON_HARD_KEY_INTENT_POLICY_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 300
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 301
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 302
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$13$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$13$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v0

    .line 318
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 321
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 322
    invoke-virtual {v0, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v2, "GESTURE_PACK_UPDATE_SYSTEMUI_STATE_FLAG"

    .line 323
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 324
    sget-object v2, Lcom/android/systemui/navigationbar/store/EventType;->ON_UPDATE_SYSTEMUI_STATE_FLAG:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 325
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 326
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 327
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$14$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$14$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v0

    .line 342
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 345
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 346
    invoke-virtual {v0, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v1, "GESTURE_PACK_NAVBAR_BUTTON_FORCED_VISIBLE_CHANGED"

    .line 347
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 348
    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_BUTTON_FORCED_VISIBLE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 349
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 350
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 351
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$15$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$15$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v0

    .line 360
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 363
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 364
    invoke-virtual {v0, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v1, "GESTURE_PACK_GET_NAVBAR_BUTTON_FORCED_VISIBLE"

    .line 365
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 366
    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_NAVBAR_BUTTON_FORCED_VISIBLE:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 367
    const-class v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 368
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$16$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$16$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v0

    .line 374
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 377
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 378
    invoke-virtual {v0, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v1, "GESTURE_PACK_GET_GESTURE_HINT_ENABLED"

    .line 379
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 380
    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_GESTURE_HINT:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 381
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 382
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$17$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$17$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v0

    .line 388
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 391
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 392
    invoke-virtual {v0, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v1, "GESTURE_PACK_UPDATE_ONEHAND_MODE_INFO"

    .line 393
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 394
    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_ONEHANDE_MODE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 395
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 396
    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$18$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$18$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v0

    .line 414
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 417
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 418
    invoke-virtual {v0, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v2, "GESTURE_PACK_UPDATE_REGION_SAMPLING_RECT"

    .line 419
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 421
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 422
    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Companion;->getLOW_PRIORITY()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPriority(Ljava/lang/Integer;)V

    .line 424
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$19$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$19$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 434
    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
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

    .line 438
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;->bands:Ljava/util/List;

    return-object p0
.end method
