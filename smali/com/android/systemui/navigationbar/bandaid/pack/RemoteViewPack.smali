.class public final Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;
.super Ljava/lang/Object;
.source "RemoteViewPack.kt"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteViewPack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteViewPack.kt\ncom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack\n+ 2 Band.kt\ncom/android/systemui/navigationbar/bandaid/Band$Companion\n*L\n1#1,235:1\n43#2:236\n43#2:237\n43#2:238\n43#2:239\n43#2:240\n43#2:241\n43#2:242\n43#2:243\n43#2:244\n43#2:245\n*E\n*S KotlinDebug\n*F\n+ 1 RemoteViewPack.kt\ncom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack\n*L\n33#1:236\n59#1:237\n89#1:238\n110#1:239\n125#1:240\n141#1:241\n156#1:242\n176#1:243\n197#1:244\n214#1:245\n*E\n"
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

    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    const-class v1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    const-string/jumbo v2, "store"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;->bands:Ljava/util/List;

    .line 33
    sget-object p0, Lcom/android/systemui/navigationbar/bandaid/Band;->Companion:Lcom/android/systemui/navigationbar/bandaid/Band$Companion;

    .line 43
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 34
    sget-boolean v4, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 35
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v6, "REMOTE_VIEW_PACK_INIT_REMOTE_VIEW_MANAGER"

    .line 36
    invoke-virtual {v3, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 37
    sget-object v6, Lcom/android/systemui/navigationbar/store/EventType;->ON_START_NAVBAR_REMOTEVIEW_MANAGER_SERVICE:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v3, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 38
    const-class v6, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    .line 39
    const-class v9, Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v10, 0x1

    aput-object v9, v7, v10

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 40
    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1;

    invoke-direct {v7, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v3

    .line 57
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 60
    invoke-virtual {v3, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 61
    invoke-virtual {v3, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v7, "REMOTE_VIEW_PACK_SET_REMOTEVIEW_CONTAINER"

    .line 62
    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 63
    sget-object v7, Lcom/android/systemui/navigationbar/store/EventType;->ON_UPDATE_REMOTEVIEW:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 64
    const-class v7, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v1, v7, v8

    .line 65
    const-class v9, Lcom/android/systemui/navigationbar/NavigationBarView;

    aput-object v9, v7, v10

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 66
    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$1$1;

    invoke-direct {v7, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v3

    .line 87
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 90
    invoke-virtual {v3, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 91
    invoke-virtual {v3, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Companion;->getHIGH_PRIORITY()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPriority(Ljava/lang/Integer;)V

    const-string v7, "REMOTE_VIEW_PACK_SET_NAVBAR_SHORTCUT_TO_MANAGER"

    .line 93
    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 94
    sget-object v7, Lcom/android/systemui/navigationbar/store/EventType;->ON_SET_REMOTEVIEW:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 95
    const-class v9, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 96
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 97
    new-instance v9, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$2$1;

    invoke-direct {v9, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$2$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v3, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v3

    .line 108
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 111
    invoke-virtual {v3, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 112
    invoke-virtual {v3, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v9, "REMOTE_VIEW_PACK_SET_NAVBAR_SHORTCUT_UPDATE_VIEW_VISIBILITY"

    .line 113
    invoke-virtual {v3, v9}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 115
    const-class v7, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 116
    const-class v7, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 117
    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$3$1;

    invoke-direct {v7, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$3$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v3

    .line 123
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 126
    invoke-virtual {v3, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 127
    invoke-virtual {v3, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v7, "REMOTE_VIEW_PACK_UPDATE_DARK_INTENSITY"

    .line 128
    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 129
    sget-object v7, Lcom/android/systemui/navigationbar/store/EventType;->ON_UPDATE_NAVBAR_DARK_INTENSITY:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 130
    const-class v7, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v1, v6, v8

    .line 131
    const-class v7, Lcom/android/systemui/navigationbar/NavigationBarView;

    aput-object v7, v6, v10

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 132
    new-instance v6, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$4$1;

    invoke-direct {v6, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$4$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v3, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v3

    .line 139
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 142
    invoke-virtual {v3, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 143
    invoke-virtual {v3, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v6, "REMOTE_VIEW_PACK_INVALIDATE_NAVBAR_REMOTEVIEW"

    .line 144
    invoke-virtual {v3, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 145
    sget-object v6, Lcom/android/systemui/navigationbar/store/EventType;->ON_INVALIDATE_REMOTEVIEW:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v3, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 146
    const-class v6, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {v3, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 147
    const-class v6, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 148
    new-instance v6, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$5$1;

    invoke-direct {v6, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$5$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v3, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v3

    .line 154
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 157
    invoke-virtual {v3, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 158
    invoke-virtual {v3, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v6, "REMOTE_VIEW_PACK_UPDATE_NAVBAR_CAN_MOVE_STATE"

    .line 159
    invoke-virtual {v3, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 160
    sget-object v7, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_CAN_MOVE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 161
    invoke-virtual {v3, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 162
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 163
    new-instance v8, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$6$1;

    invoke-direct {v8, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$6$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v3, v8}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v3

    .line 174
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 177
    invoke-virtual {v3, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 178
    invoke-virtual {v3, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    .line 179
    invoke-virtual {v3, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v3, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 181
    const-class v6, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v3, v6}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 182
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setModuleDependency(Ljava/util/List;)V

    .line 183
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$7$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$7$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v3, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v1

    .line 195
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 198
    invoke-virtual {v1, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 199
    invoke-virtual {v1, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v3, "REMOTE_VIEW_PACK_UPDATE_NAVBAR_CAN_MOVE_VALUE"

    .line 200
    invoke-virtual {v1, v3}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1, v7}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 202
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Companion;->getLOW_PRIORITY()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPriority(Ljava/lang/Integer;)V

    .line 204
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$8$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$8$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {v1, p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 212
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 215
    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setRuneDependency(Z)V

    .line 216
    invoke-virtual {p0, v5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    const-string v0, "REMOTE_VIEW_PACK_GAMETOOLS_SYSTEMUI_STATE_FLAG"

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_UPDATE_GAMETOOLS_SYSTEMUI_STATE_FLAG:Lcom/android/systemui/navigationbar/store/EventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 219
    const-class v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    .line 220
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$9$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$9$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    .line 229
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 233
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;->bands:Ljava/util/List;

    return-object p0
.end method
