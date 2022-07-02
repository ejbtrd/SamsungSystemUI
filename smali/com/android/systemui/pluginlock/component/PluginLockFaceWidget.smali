.class public Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "PluginLockFaceWidget.java"


# static fields
.field private static final KEY_CLOCK_TYPE:Ljava/lang/String; = "clock_type"

.field private static final KEY_PLUGIN_LOCK_CLOCK:Ljava/lang/String; = "plugin_lock_clock"

.field private static final TAG:Ljava/lang/String; = "PluginLockFaceWidget"

.field private static final UPDATE_LOCKSTAR_CLOCK:Ljava/lang/String; = "update_lockstar_clock"

.field private static final UPDATE_LOCKSTAR_DATA:Ljava/lang/String; = "update_lockstar_data"

.field private static final UPDATE_LOCKSTAR_DATA_ITEM:Ljava/lang/String; = "update_lockstar_data_item"


# instance fields
.field private final mClockCallback:Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;

.field private mClockGravity:I

.field private mClockGravityLand:I

.field private final mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

.field private mClockRecoverType:I

.field private mClockScale:F

.field private mClockScaleLand:F

.field private mClockType:I

.field private mClockVisibility:I

.field private mClockVisibilityLand:I

.field private mIsDlsData:Z

.field private mIsLandscapeAvailable:Z

.field private mIsPortraitAvailable:Z

.field private mServiceBoxBottom:I

.field private mServiceBoxBottomLand:I

.field private mServiceBoxPaddingEnd:I

.field private mServiceBoxPaddingEndLand:I

.field private mServiceBoxPaddingStart:I

.field private mServiceBoxPaddingStartLand:I

.field private mServiceBoxTop:I

.field private mServiceBoxTopLand:I

.field private mStateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;


# direct methods
.method public static synthetic $r8$lambda$K9tYnSUJDJsRVyAa0V4np8SgBVE(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->lambda$unregisterClockCallbackRecover$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 34
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 36
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScale:F

    .line 37
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravity:I

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibility:I

    .line 39
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStart:I

    .line 40
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEnd:I

    .line 41
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTop:I

    .line 42
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottom:I

    .line 44
    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScaleLand:F

    .line 45
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravityLand:I

    .line 46
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibilityLand:I

    .line 47
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStartLand:I

    .line 48
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEndLand:I

    .line 49
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTopLand:I

    .line 50
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottomLand:I

    .line 308
    new-instance p1, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$1;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockCallback:Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;

    .line 61
    const-class p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 62
    const-class p1, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->pluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->updateLockStarData()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    return p0
.end method

.method private synthetic lambda$unregisterClockCallbackRecover$0()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockCallback:Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;)V

    return-void
.end method

.method private registerClockCallback(I)V
    .locals 2

    .line 290
    iput p1, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 292
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockCallback:Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->registerClockChangedCallback(Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;)V

    return-void
.end method

.method private resetClockData(Z)V
    .locals 5

    .line 231
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    const-string p1, "PluginLockFaceWidget"

    const-string/jumbo v0, "resetClockData()"

    .line 232
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 233
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    const/4 v0, 0x1

    .line 234
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    .line 235
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStart:I

    .line 236
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEnd:I

    .line 237
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravity:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 238
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScale:F

    .line 239
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibility:I

    .line 240
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTop:I

    .line 241
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottom:I

    .line 242
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStartLand:I

    .line 243
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEndLand:I

    .line 244
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravityLand:I

    .line 245
    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScaleLand:F

    .line 246
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibilityLand:I

    .line 247
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTopLand:I

    .line 248
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottomLand:I

    const/4 p1, 0x0

    .line 249
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsPortraitAvailable:Z

    .line 250
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsLandscapeAvailable:Z

    .line 253
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 254
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravity:I

    const-string v2, "key_page_gravity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScale:F

    const-string v2, "key_page_scale"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 256
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibility:I

    const-string v2, "key_visibility"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTop:I

    const-string v2, "key_page_top_padding"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottom:I

    const-string v2, "key_page_bottom_padding"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStart:I

    const-string v2, "key_page_start_padding"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEnd:I

    const-string v3, "key_page_end_padding"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravityLand:I

    const-string v4, "key_page_gravity_land"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScaleLand:F

    const-string v4, "key_page_scale_land"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 263
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibilityLand:I

    const-string v4, "key_visibility_land"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTopLand:I

    const-string v4, "key_page_top_padding_land"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottomLand:I

    const-string v4, "key_page_bottom_padding_land"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStartLand:I

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEndLand:I

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_lock_star_clock"

    .line 268
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsPortraitAvailable:Z

    const-string v2, "key_page_available"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 270
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsLandscapeAvailable:Z

    const-string v2, "key_page_available_land"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 272
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 273
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 275
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_1

    .line 277
    invoke-interface {v1, v0}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onClockChanged(Landroid/os/Bundle;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private unregisterClockCallback()V
    .locals 2

    const/4 v0, -0x1

    .line 296
    iput v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const-wide/16 v0, 0x0

    .line 297
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 298
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockCallback:Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;)V

    return-void
.end method

.method private unregisterClockCallbackRecover()V
    .locals 2

    const/4 v0, -0x1

    .line 302
    iput v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackValue:I

    const-wide/16 v0, 0x0

    .line 303
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->mCallbackRegisterTime:J

    .line 305
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLockStarData()V
    .locals 4

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateLockStarData() clockType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->getLockClockType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockFaceWidget"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->pluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    if-eqz v0, :cond_0

    .line 356
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string/jumbo v2, "update_lockstar_data"

    .line 357
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "update_lockstar_data_item"

    const-string v3, "clock_type"

    .line 360
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {v2}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->getLockClockType()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "extras"

    .line 362
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 364
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->pluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->updateLockStarData(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 3

    .line 67
    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->loadClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockState()I

    move-result v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockFaceWidget"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const-string p0, "apply() skip!"

    .line 74
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_0

    .line 77
    :cond_1
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 79
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->getLockClockType()I

    move-result p1

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apply() current clock: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "apply() dls clock setClockType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->setClockType(I)Z

    .line 88
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    const-string p2, "plugin_lock_clock"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    .line 91
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->registerClockCallback(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public loadClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 3

    const-string v0, "PluginLockFaceWidget"

    const-string v1, "loadClockData()"

    .line 167
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    .line 170
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getClockType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    .line 172
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getRecoverType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    .line 174
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getGravity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravity:I

    .line 175
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getScale()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScale:F

    .line 176
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibility()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibility:I

    .line 177
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopY()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTop:I

    .line 178
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getBottomY()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottom:I

    .line 179
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStart()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStart:I

    .line 180
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingEnd()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEnd:I

    .line 182
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getGravityLand()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravityLand:I

    .line 183
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getScaleLand()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScaleLand:F

    .line 184
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibilityLand()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibilityLand:I

    .line 185
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopYLand()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTopLand:I

    .line 186
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getBottomYLand()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottomLand:I

    .line 187
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStartLand()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStartLand:I

    .line 188
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingEndLand()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEndLand:I

    .line 190
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isPortraitAvailable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsPortraitAvailable:Z

    .line 191
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isLandscapeAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsLandscapeAvailable:Z

    .line 194
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 195
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravity:I

    const-string v2, "key_page_gravity"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScale:F

    const-string v2, "key_page_scale"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 197
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibility:I

    const-string v2, "key_visibility"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTop:I

    const-string v2, "key_page_top_padding"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottom:I

    const-string v2, "key_page_bottom_padding"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStart:I

    const-string v2, "key_page_start_padding"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEnd:I

    const-string v2, "key_page_end_padding"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockGravityLand:I

    const-string v2, "key_page_gravity_land"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockScaleLand:F

    const-string v2, "key_page_scale_land"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 205
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockVisibilityLand:I

    const-string v2, "key_visibility_land"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxTopLand:I

    const-string v2, "key_page_top_padding_land"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxBottomLand:I

    const-string v2, "key_page_bottom_padding_land"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingStartLand:I

    const-string v2, "key_page_start_padding_land"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mServiceBoxPaddingEndLand:I

    const-string v2, "key_page_end_padding_land"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsPortraitAvailable:Z

    const-string v2, "key_page_available"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsLandscapeAvailable:Z

    const-string v2, "key_page_available_land"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "key_lock_star_clock"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadClockData() bundle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 218
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_0

    .line 223
    invoke-interface {v1, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onClockChanged(Landroid/os/Bundle;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public recover()V
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recover() mClockRecoverType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockFaceWidget"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockRecoverType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    const/4 v1, -0x2

    .line 129
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockState(I)V

    const-string v1, "plugin_lock_clock"

    .line 130
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->unregisterClockCallbackRecover()V

    :cond_0
    return-void
.end method

.method public registerStateCallback(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;",
            ">;>;)V"
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mStateListenerList:Ljava/util/List;

    return-void
.end method

.method public reset(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 137
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->resetClockData(Z)V

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->unregisterClockCallback()V

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockState()I

    move-result v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockFaceWidget"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockBackupValue()I

    move-result v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset() setClockType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->setClockType(I)Z

    const-string v0, "plugin_lock_clock"

    .line 155
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 4

    const-string v0, "PluginLockFaceWidget"

    const-string/jumbo v1, "update()"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->loadClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockState()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 101
    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mIsDlsData:Z

    if-eqz v2, :cond_0

    const-string/jumbo p0, "update() skip!"

    .line 102
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->unregisterClockCallback()V

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "update() mClockType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    const-string p2, "plugin_lock_clock"

    if-eq p1, v2, :cond_2

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update() setClockType: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->setClockType(I)Z

    .line 111
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    .line 112
    iget p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockType:I

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->registerClockCallback(I)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->getClockBackupValue()I

    move-result p1

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update() backupClockType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->setClockType(I)Z

    .line 117
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->putSettingsSecure(Ljava/lang/String;I)V

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setClockBackupValue(I)V

    :goto_0
    return-void
.end method
