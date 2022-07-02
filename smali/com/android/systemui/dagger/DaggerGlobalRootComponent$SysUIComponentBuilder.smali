.class final Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/dagger/SysUIComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerGlobalRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SysUIComponentBuilder"
.end annotation


# instance fields
.field private setAppPairs:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairs;",
            ">;"
        }
    .end annotation
.end field

.field private setBubbles:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;"
        }
    .end annotation
.end field

.field private setDisplayController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private setHideDisplayCutout:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field private setLegacySplitScreen:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;"
        }
    .end annotation
.end field

.field private setOneHanded:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;"
        }
    .end annotation
.end field

.field private setPip:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;"
        }
    .end annotation
.end field

.field private setShellCommandHandler:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private setSplitScreen:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;"
        }
    .end annotation
.end field

.field private setStartingSurface:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingSurface;",
            ">;"
        }
    .end annotation
.end field

.field private setTaskSurfaceHelper:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;",
            ">;"
        }
    .end annotation
.end field

.field private setTaskViewFactory:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;"
        }
    .end annotation
.end field

.field private setTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

.field final synthetic this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)V
    .locals 0

    .line 2268
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V
    .locals 0

    .line 2268
    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;-><init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/dagger/SysUIComponent;
    .locals 23

    move-object/from16 v0, p0

    .line 2375
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setPip:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2376
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setLegacySplitScreen:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2377
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2378
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setAppPairs:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2379
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2380
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2381
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2382
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setHideDisplayCutout:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2383
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setShellCommandHandler:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2384
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    const-class v2, Lcom/android/wm/shell/transition/ShellTransitions;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2385
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setStartingSurface:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2386
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTaskSurfaceHelper:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2387
    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setDisplayController:Ljava/util/Optional;

    const-class v2, Ljava/util/Optional;

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2388
    new-instance v1, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;

    move-object v3, v1

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->this$0:Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    new-instance v2, Lcom/android/systemui/dagger/DependencyProvider;

    move-object v5, v2

    invoke-direct {v2}, Lcom/android/systemui/dagger/DependencyProvider;-><init>()V

    new-instance v2, Lcom/android/systemui/dagger/NightDisplayListenerModule;

    move-object v6, v2

    invoke-direct {v2}, Lcom/android/systemui/dagger/NightDisplayListenerModule;-><init>()V

    new-instance v2, Lcom/android/systemui/keyguard/dagger/KeyguardModule;

    move-object v7, v2

    invoke-direct {v2}, Lcom/android/systemui/keyguard/dagger/KeyguardModule;-><init>()V

    new-instance v2, Lcom/android/systemui/user/UserModule;

    move-object v8, v2

    invoke-direct {v2}, Lcom/android/systemui/user/UserModule;-><init>()V

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setPip:Ljava/util/Optional;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setLegacySplitScreen:Ljava/util/Optional;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setAppPairs:Ljava/util/Optional;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    iget-object v15, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setHideDisplayCutout:Ljava/util/Optional;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setShellCommandHandler:Ljava/util/Optional;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setStartingSurface:Ljava/util/Optional;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTaskSurfaceHelper:Ljava/util/Optional;

    move-object/from16 v20, v2

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setDisplayController:Ljava/util/Optional;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-direct/range {v3 .. v22}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent;Lcom/android/systemui/dagger/DependencyProvider;Lcom/android/systemui/dagger/NightDisplayListenerModule;Lcom/android/systemui/keyguard/dagger/KeyguardModule;Lcom/android/systemui/user/UserModule;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/ShellTransitions;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V

    return-object v1
.end method

.method public setAppPairs(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairs;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 2315
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setAppPairs:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setAppPairs(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setAppPairs(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setBubbles(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 2327
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setBubbles:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setBubbles(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setBubbles(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setDisplayController(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 2369
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setDisplayController:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setDisplayController(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setDisplayController(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setHideDisplayCutout(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 2339
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setHideDisplayCutout:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setHideDisplayCutout(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setHideDisplayCutout(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setLegacySplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 2303
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setLegacySplitScreen:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setLegacySplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setLegacySplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 2321
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setOneHanded:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setPip(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 2297
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setPip:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setPip(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setPip(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setShellCommandHandler(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 2345
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setShellCommandHandler:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setShellCommandHandler(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setShellCommandHandler(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 2309
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setSplitScreen:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setStartingSurface(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingSurface;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 2357
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setStartingSurface:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setStartingSurface(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setStartingSurface(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setTaskSurfaceHelper(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 2363
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTaskSurfaceHelper:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setTaskSurfaceHelper(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTaskSurfaceHelper(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;)",
            "Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;"
        }
    .end annotation

    .line 2333
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTaskViewFactory:Ljava/util/Optional;

    return-object p0
.end method

.method public bridge synthetic setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setTransitions(Lcom/android/wm/shell/transition/ShellTransitions;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;
    .locals 0

    .line 2351
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/transition/ShellTransitions;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTransitions:Lcom/android/wm/shell/transition/ShellTransitions;

    return-object p0
.end method

.method public bridge synthetic setTransitions(Lcom/android/wm/shell/transition/ShellTransitions;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 2268
    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;->setTransitions(Lcom/android/wm/shell/transition/ShellTransitions;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentBuilder;

    move-result-object p0

    return-object p0
.end method
