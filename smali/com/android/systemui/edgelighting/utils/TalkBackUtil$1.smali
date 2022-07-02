.class Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TalkBackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/utils/TalkBackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/utils/TalkBackUtil;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;->this$0:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TTS_END"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TalkBackUtils"

    const-string v0, "TTS speaking is done!!!"

    .line 39
    invoke-static {p1, v0}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;->this$0:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->stopTTS()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TTS_END"

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "TalkBackUtils"

    const-string v0, "Error occured during TTS speaks!!!"

    .line 47
    invoke-static {p1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$1;->this$0:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->stopTTS()V

    :cond_0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    const-string p0, "TalkBackUtils"

    const-string p1, "TTS speaks now!!!"

    .line 54
    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
