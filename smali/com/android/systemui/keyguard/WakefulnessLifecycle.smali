.class public Lcom/android/systemui/keyguard/WakefulnessLifecycle;
.super Lcom/android/systemui/keyguard/SecLifecycle;
.source "WakefulnessLifecycle.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/keyguard/SecLifecycle<",
        "Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mLastSleepOriginLocation:Landroid/graphics/Point;

.field private mLastSleepReason:I

.field private mLastWakeOriginLocation:Landroid/graphics/Point;

.field private mLastWakeReason:I

.field private mWakefulness:I

.field private final mWallpaperManagerService:Landroid/app/IWallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/keyguard/SecLifecycle;-><init>()V

    const/4 v0, 0x2

    .line 71
    iput v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    .line 78
    iput v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 81
    iput-object v1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    .line 88
    iput-object p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 90
    iput-object p2, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    return-void
.end method

.method private getDefaultWakeSleepOrigin()Landroid/graphics/Point;
    .locals 2

    .line 230
    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getPowerButtonOrigin()Landroid/graphics/Point;
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 213
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$dimen;->physical_power_button_center_screen_location_y:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 218
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mContext:Landroid/content/Context;

    .line 219
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->physical_power_button_center_screen_location_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private setWakefulness(I)V
    .locals 2

    .line 175
    iput p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const-wide/16 v0, 0x1000

    const-string/jumbo p0, "wakefulness"

    .line 176
    invoke-static {v0, v1, p0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    return-void
.end method

.method private updateLastSleepOriginLocation()V
    .locals 2

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    .line 195
    iget v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getDefaultWakeSleepOrigin()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    goto :goto_0

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getPowerButtonOrigin()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    :goto_0
    return-void
.end method

.method private updateLastWakeOriginLocation()V
    .locals 2

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    .line 182
    iget v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getDefaultWakeSleepOrigin()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    goto :goto_0

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getPowerButtonOrigin()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchFinishedGoingToSleep()V
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    .line 165
    sget-object v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchFinishedWakingUp()V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    .line 137
    sget-object v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchStartedGoingToSleep(I)V
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    .line 145
    iput p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->updateLastSleepOriginLocation()V

    .line 148
    iget-object p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    if-eqz p1, :cond_1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepOriginLocation:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, v1, v0, v2}, Landroid/app/IWallpaperManager;->notifyGoingToSleep(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 157
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda2;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchStartedWakingUp(I)V
    .locals 3

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->setWakefulness(I)V

    .line 117
    iput p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->updateLastWakeOriginLocation()V

    .line 120
    iget-object p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    if-eqz p1, :cond_1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeOriginLocation:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, v1, v0, v2}, Landroid/app/IWallpaperManager;->notifyWakingUp(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 129
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/systemui/keyguard/WakefulnessLifecycle$$ExternalSyntheticLambda3;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "WakefulnessLifecycle:"

    .line 170
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mWakefulness="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getLastSleepReason()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    return p0
.end method

.method public getLastWakeReason()I
    .locals 0

    .line 101
    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    return p0
.end method

.method public getWakefulness()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    return p0
.end method
