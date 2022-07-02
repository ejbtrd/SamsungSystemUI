.class public final Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;
.super Ljava/lang/Object;
.source "UdfpsHapticsSimulator.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Command;


# instance fields
.field private final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sonificationEffects:Landroid/media/AudioAttributes;

.field private udfpsController:Lcom/android/systemui/biometrics/UdfpsController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final vibrator:Landroid/os/Vibrator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Landroid/os/Vibrator;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/commandline/CommandRegistry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Vibrator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/keyguard/KeyguardUpdateMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "commandRegistry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardUpdateMonitor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->vibrator:Landroid/os/Vibrator;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 43
    new-instance p2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 p3, 0x4

    .line 44
    invoke-virtual {p2, p3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    const/16 p3, 0xd

    .line 45
    invoke-virtual {p2, p3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    .line 46
    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->sonificationEffects:Landroid/media/AudioAttributes;

    .line 50
    new-instance p2, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$1;-><init>(Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;)V

    const-string/jumbo p0, "udfps-haptic"

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->invalidCommand(Ljava/io/PrintWriter;)V

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 57
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "start"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->playStartHaptic()V

    goto :goto_1

    :sswitch_1
    const-string v0, "error"

    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    .line 72
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->vibrator:Landroid/os/Vibrator;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x1

    .line 73
    invoke-static {p2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p2

    .line 74
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->sonificationEffects:Landroid/media/AudioAttributes;

    .line 72
    invoke-virtual {p1, p2, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    goto :goto_1

    :sswitch_2
    const-string v0, "acquired"

    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    .line 62
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->playAcquiredHaptic()V

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "success"

    .line 57
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    .line 66
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->vibrator:Landroid/os/Vibrator;

    if-nez p1, :cond_7

    goto :goto_1

    .line 67
    :cond_7
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p2

    .line 68
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->sonificationEffects:Landroid/media/AudioAttributes;

    .line 66
    invoke-virtual {p1, p2, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    goto :goto_1

    .line 76
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->invalidCommand(Ljava/io/PrintWriter;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f4abffd -> :sswitch_3
        -0x672f45b2 -> :sswitch_2
        0x5c4d208 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.method public help(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pw"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Usage: adb shell cmd statusbar udfps-haptic <haptic>"

    .line 82
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Available commands:"

    .line 83
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  start"

    .line 84
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  acquired"

    .line 85
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  success, always plays CLICK haptic"

    .line 86
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  error, always plays DOUBLE_CLICK haptic"

    .line 87
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final invalidCommand(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalid command"

    .line 91
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->help(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final setUdfpsController(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0
    .param p1    # Lcom/android/systemui/biometrics/UdfpsController;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 47
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    return-void
.end method
