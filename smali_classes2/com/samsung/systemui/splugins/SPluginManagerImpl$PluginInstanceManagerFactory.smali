.class public Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;
.super Ljava/lang/Object;
.source "SPluginManagerImpl.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/SPluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginInstanceManagerFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Ljava/lang/Class;Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Lcom/samsung/systemui/splugins/SPluginInstanceManager;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;ZZ",
            "Landroid/os/Looper;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/samsung/systemui/splugins/SPluginManagerImpl;",
            ")",
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager;"
        }
    .end annotation

    .line 401
    new-instance v10, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    new-instance v0, Lcom/samsung/systemui/splugins/SVersionInfo;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/SVersionInfo;-><init>()V

    move-object/from16 v1, p7

    .line 402
    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SVersionInfo;

    move-result-object v7

    new-instance v9, Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;

    move-object v1, p1

    invoke-direct {v9, p1}, Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;-><init>(Landroid/content/Context;)V

    move-object v0, v10

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Lcom/samsung/systemui/splugins/SVersionInfo;Lcom/samsung/systemui/splugins/SPluginManagerImpl;Lcom/samsung/systemui/splugins/SPluginPolicyInteractor;)V

    return-object v10
.end method
