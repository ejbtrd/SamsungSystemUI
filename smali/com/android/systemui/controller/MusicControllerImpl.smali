.class public Lcom/android/systemui/controller/MusicControllerImpl;
.super Ljava/lang/Object;
.source "MusicControllerImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby2/controller/MusicController;


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MusicControllerImpl"

    .line 14
    iput-object v0, p0, Lcom/android/systemui/controller/MusicControllerImpl;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public downVolume(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public getRingerModeInternal(Landroid/content/Context;)I
    .locals 0

    const-string p0, "audio"

    .line 61
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 62
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p0

    return p0
.end method

.method public nextMedia(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public playMedia(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public previousMedia(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setVolume(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public stopMedia(Landroid/content/Context;)V
    .locals 4

    .line 22
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x4000000

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 24
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 31
    :try_start_0
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 32
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string p0, "MusicControllerImpl"

    const-string/jumbo p1, "stopMedia "

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    throw p0
.end method

.method public upVolume(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    return-void
.end method
