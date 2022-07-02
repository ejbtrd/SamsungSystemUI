.class public Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;
.super Ljava/lang/Object;
.source "EdgeLightingDispatcher.java"

# interfaces
.implements Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefaultLighting:Z

.field private mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

.field private mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

.field private mIEdgeLightingWindowCallback:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

.field private mPackageName:Ljava/lang/String;

.field private mSettingObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    .line 58
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->updateSetting(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->registerSettingChangeListener()V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->isDefaultLighting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-direct {v0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mClassName:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    .line 44
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->updateSetting(Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->registerSettingChangeListener()V

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->isDefaultLighting()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p2, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    iget-object p3, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mClassName:Ljava/lang/String;

    invoke-direct {p2, p1, p3, v0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    new-instance p3, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->updateSetting(Ljava/lang/String;)V

    return-void
.end method

.method private registerSettingChangeListener()V
    .locals 3

    const-string v0, "edge_lighting_style_type_str"

    .line 353
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 354
    new-instance v1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$2;-><init>(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Landroid/database/ContentObserver;

    .line 362
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterSettingChangeListener()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mSettingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private updateSetting(Ljava/lang/String;)V
    .locals 3

    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 294
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "preload/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 297
    :cond_1
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preload/noframe"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->setEdgeLightingStyleType(Landroid/content/ContentResolver;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mPackageName:Ljava/lang/String;

    .line 311
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mClassName:Ljava/lang/String;

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSetting:forceValue="

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mDefaultLighting="

    .line 343
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",mPackageName="

    .line 345
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mClassName="

    .line 347
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgeLightingDispatcher"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->unRegisterSettingChangeListener()V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    const-string v1, "EdgeLightingDispatcher"

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDialog showing : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->stopEdgeEffect()V

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    if-eqz v0, :cond_1

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mEffectServiceConrtroller showing : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->isShowing()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStop()V

    :cond_1
    return-void
.end method

.method public getEffectView()Landroid/view/View;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->getEffectView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isDefaultLighting()Z
    .locals 0

    .line 265
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDefaultLighting:Z

    return p0
.end method

.method public isShowing()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    return p0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->isStarting()Z

    move-result p0

    return p0
.end method

.method public refreshBackground()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->refreshBackground()V

    return-void

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchRefresh()V

    return-void
.end method

.method public registerEdgeWindowCallback(Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->registerEdgeWindowCallback(Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;)V

    return-void

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    .line 114
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    new-instance v1, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;->createBaseClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;-><init>(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->setOnEventListener(Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;)V

    return-void
.end method

.method public setDozeDrawMode(Z)V
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    if-eqz p0, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->setDozeDrawMode(Z)V

    :cond_0
    return-void
.end method

.method public setForceSettingValue(Ljava/lang/String;)V
    .locals 4

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->unRegisterSettingChangeListener()V

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->updateSetting(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->isDefaultLighting()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    if-nez p1, :cond_0

    .line 75
    new-instance p1, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    .line 77
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    goto :goto_0

    .line 79
    :cond_1
    new-instance p1, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mClassName:Ljava/lang/String;

    invoke-direct {p1, v1, v2, v3}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 80
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    :goto_0
    return-void
.end method

.method public showPreview(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;Z)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->showPreview(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;Z)V

    return-void

    .line 198
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStart(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    return-void
.end method

.method public startApplication([I)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->startApplication([I)V

    :cond_0
    return-void
.end method

.method public startEdgeEffect(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->startEdgeEffect(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    return-void

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStart(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    return-void
.end method

.method public stopApplication()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->stopApplication()V

    return-void

    .line 207
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStop()V

    return-void
.end method

.method public stopEdgeEffect()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->stopEdgeEffect()V

    return-void

    .line 216
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStop()V

    return-void
.end method

.method public stopPreview()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->stopPreview()V

    return-void

    .line 225
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchStop()V

    return-void
.end method

.method public unRegisterEdgeWindowCallback(Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->unRegisterEdgeWindowCallback(Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;)V

    return-void

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->setOnEventListener(Lcom/android/systemui/edgelighting/reflection/IEdgeLightingEffectCallbackReflection;)V

    .line 158
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mIEdgeLightingWindowCallback:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    return-void
.end method

.method public updatePreview(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->updatePreview(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    return-void

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchUpdate(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    return-void
.end method

.method public updateText(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;Z)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->updateText(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;Z)V

    return-void

    .line 234
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->dispatchUpdate(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    return-void
.end method
