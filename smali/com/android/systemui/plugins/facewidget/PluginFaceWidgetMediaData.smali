.class public Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;
.super Ljava/lang/Object;
.source "PluginFaceWidgetMediaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;,
        Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;
    }
.end annotation


# instance fields
.field actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;",
            ">;"
        }
    .end annotation
.end field

.field actionsToShowInCompact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field active:Z

.field app:Ljava/lang/String;

.field appIcon:Landroid/graphics/drawable/Drawable;

.field artist:Ljava/lang/CharSequence;

.field artwork:Landroid/graphics/drawable/Icon;

.field backgroundColor:I

.field clickIntent:Landroid/app/PendingIntent;

.field device:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;

.field foregroundColor:I

.field hasCheckedForResume:Z

.field initialized:Z

.field notificationKey:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field resumeAction:Ljava/lang/Runnable;

.field resumption:Z

.field song:Ljava/lang/CharSequence;

.field token:Landroid/media/session/MediaSession$Token;

.field userId:I


# direct methods
.method public constructor <init>(IZIILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;ZLjava/lang/Runnable;ZLjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZII",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/media/session/MediaSession$Token;",
            "Landroid/app/PendingIntent;",
            "Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;",
            "Z",
            "Ljava/lang/Runnable;",
            "Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->initialized:Z

    .line 28
    iput-boolean v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->resumption:Z

    .line 30
    iput-boolean v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->hasCheckedForResume:Z

    move v1, p1

    .line 37
    iput v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->userId:I

    move v1, p2

    .line 38
    iput-boolean v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->initialized:Z

    move v1, p3

    .line 39
    iput v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->backgroundColor:I

    move v1, p4

    .line 40
    iput v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->foregroundColor:I

    move-object v1, p5

    .line 41
    iput-object v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->app:Ljava/lang/String;

    move-object v1, p6

    .line 42
    iput-object v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->appIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p7

    .line 43
    iput-object v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->artist:Ljava/lang/CharSequence;

    move-object v1, p8

    .line 44
    iput-object v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->song:Ljava/lang/CharSequence;

    move-object v1, p9

    .line 45
    iput-object v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->artwork:Landroid/graphics/drawable/Icon;

    move-object v1, p10

    .line 46
    iput-object v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->actions:Ljava/util/List;

    move-object v1, p11

    .line 47
    iput-object v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->actionsToShowInCompact:Ljava/util/List;

    move-object v1, p12

    .line 48
    iput-object v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->packageName:Ljava/lang/String;

    move-object v1, p13

    .line 49
    iput-object v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->token:Landroid/media/session/MediaSession$Token;

    move-object/from16 v1, p14

    .line 50
    iput-object v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->clickIntent:Landroid/app/PendingIntent;

    move-object/from16 v1, p15

    .line 51
    iput-object v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->device:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;

    move/from16 v1, p16

    .line 52
    iput-boolean v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->active:Z

    move-object/from16 v1, p17

    .line 53
    iput-object v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->resumeAction:Ljava/lang/Runnable;

    move/from16 v1, p18

    .line 54
    iput-boolean v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->resumption:Z

    move-object/from16 v1, p19

    .line 55
    iput-object v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->notificationKey:Ljava/lang/String;

    move/from16 v1, p20

    .line 56
    iput-boolean v1, v0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->hasCheckedForResume:Z

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->actions:Ljava/util/List;

    return-object p0
.end method

.method public getActionsToShowInCompact()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->actionsToShowInCompact:Ljava/util/List;

    return-object p0
.end method

.method public getApp()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->app:Ljava/lang/String;

    return-object p0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getArtist()Ljava/lang/CharSequence;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->artist:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getArtwork()Landroid/graphics/drawable/Icon;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->artwork:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public getBackgroundColor()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->backgroundColor:I

    return p0
.end method

.method public getClickIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->clickIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getDevice()Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->device:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;

    return-object p0
.end method

.method public getForegroundColor()I
    .locals 0

    .line 72
    iget p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->foregroundColor:I

    return p0
.end method

.method public getNotificationKey()Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->notificationKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getResumeAction()Ljava/lang/Runnable;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->resumeAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getSong()Ljava/lang/CharSequence;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->song:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getToken()Landroid/media/session/MediaSession$Token;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->token:Landroid/media/session/MediaSession$Token;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->userId:I

    return p0
.end method

.method public isActive()Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->active:Z

    return p0
.end method

.method public isHasCheckedForResume()Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->hasCheckedForResume:Z

    return p0
.end method

.method public isInitialized()Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->initialized:Z

    return p0
.end method

.method public isResumption()Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->resumption:Z

    return p0
.end method

.method public setActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;",
            ">;)V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->actions:Ljava/util/List;

    return-void
.end method

.method public setActionsToShowInCompact(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->actionsToShowInCompact:Ljava/util/List;

    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->active:Z

    return-void
.end method

.method public setApp(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->app:Ljava/lang/String;

    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setArtist(Ljava/lang/CharSequence;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->artist:Ljava/lang/CharSequence;

    return-void
.end method

.method public setArtwork(Landroid/graphics/drawable/Icon;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->artwork:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->backgroundColor:I

    return-void
.end method

.method public setClickIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->clickIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setDevice(Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->device:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->foregroundColor:I

    return-void
.end method

.method public setHasCheckedForResume(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->hasCheckedForResume:Z

    return-void
.end method

.method public setInitialized(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->initialized:Z

    return-void
.end method

.method public setNotificationKey(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->notificationKey:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setResumeAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->resumeAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setResumption(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->resumption:Z

    return-void
.end method

.method public setSong(Ljava/lang/CharSequence;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->song:Ljava/lang/CharSequence;

    return-void
.end method

.method public setToken(Landroid/media/session/MediaSession$Token;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->token:Landroid/media/session/MediaSession$Token;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;->userId:I

    return-void
.end method
