.class public Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;
.super Ljava/lang/Object;
.source "EdgeLightingSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;,
        Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;


# instance fields
.field private final mGlobalObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mGlobalObservers:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mSystemObservers:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;
    .locals 2

    const-class v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    invoke-direct {v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;-><init>()V

    sput-object v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;

    .line 26
    :cond_0
    sget-object v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public registerContentObserver(Landroid/content/ContentResolver;Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;",
            ")V"
        }
    .end annotation

    .line 33
    const-class v0, Landroid/provider/Settings$System;

    if-ne p2, v0, :cond_0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mSystemObservers:Ljava/util/HashMap;

    .line 35
    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 36
    :cond_0
    const-class v0, Landroid/provider/Settings$Global;

    if-ne p2, v0, :cond_3

    .line 37
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mGlobalObservers:Ljava/util/HashMap;

    .line 38
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 43
    :goto_0
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;-><init>(Landroid/os/Handler;)V

    .line 46
    invoke-virtual {p0, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v0, p4}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->addObserver(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V

    const/4 p0, 0x0

    .line 48
    invoke-virtual {p1, p2, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v0, p4}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->contains(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 51
    invoke-virtual {v0, p4}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->addObserver(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string p0, "EdgeLightingSettingsObserver"

    const-string/jumbo p1, "registerContentObserver : wrong table"

    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterContentObserver(Landroid/content/ContentResolver;Ljava/lang/Class;Ljava/lang/String;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;",
            ")V"
        }
    .end annotation

    .line 59
    const-class v0, Landroid/provider/Settings$System;

    if-ne p2, v0, :cond_0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mSystemObservers:Ljava/util/HashMap;

    goto :goto_0

    .line 61
    :cond_0
    const-class v0, Landroid/provider/Settings$Global;

    if-ne p2, v0, :cond_2

    .line 62
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver;->mGlobalObservers:Ljava/util/HashMap;

    .line 67
    :goto_0
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;

    if-eqz p2, :cond_1

    .line 69
    invoke-virtual {p2, p4}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->removeObserver(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$EdgeLightingObserver;)V

    .line 70
    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingsObserver$ContentObserverWrapper;->size()I

    move-result p4

    if-nez p4, :cond_1

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 72
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    const-string p0, "EdgeLightingSettingsObserver"

    const-string/jumbo p1, "unregisterContentObserver : wrong table"

    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
