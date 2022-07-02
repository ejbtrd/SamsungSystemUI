.class Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;
.super Ljava/lang/Object;
.source "SoundModeTileTemporaryMuteBoard.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    .line 65
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChanged(mode_ringer_time_on)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isTempMuteSettingValueOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundModeTileTemporaryMuteBoard"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;)Landroid/widget/Switch;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isTempMuteSettingValueOn()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileTemporaryMuteBoard;->refreshAllView(I)V

    return-void
.end method
