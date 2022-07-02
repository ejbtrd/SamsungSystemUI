.class public final Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;
.super Ljava/lang/Object;
.source "AuthRippleController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/AuthRippleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AuthRippleCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 4
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

    .line 180
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->invalidCommand(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 183
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5203171c

    if-eq v1, v2, :cond_7

    const v2, -0x5069748f

    if-eq v1, v2, :cond_3

    const p2, 0x2fd65d

    if-eq v1, p2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string p2, "face"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_1

    .line 189
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-static {p2}, Lcom/android/systemui/biometrics/AuthRippleController;->access$getFaceSensorLocation$p(Lcom/android/systemui/biometrics/AuthRippleController;)Landroid/graphics/PointF;

    move-result-object p2

    const-string v0, "face ripple sensorLocation="

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/AuthRippleController;->access$showRipple(Lcom/android/systemui/biometrics/AuthRippleController;Landroid/hardware/biometrics/BiometricSourceType;)V

    goto/16 :goto_2

    :cond_3
    const-string v1, "custom"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    .line 193
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    .line 194
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    .line 195
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 199
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom ripple sensorLocation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-static {p1}, Lcom/android/systemui/biometrics/AuthRippleController;->access$getMView$p(Lcom/android/systemui/biometrics/AuthRippleController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/AuthRippleView;

    new-instance v2, Landroid/graphics/PointF;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-direct {v2, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/biometrics/AuthRippleView;->setSensorLocation(Landroid/graphics/PointF;)V

    .line 202
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->access$showRipple(Lcom/android/systemui/biometrics/AuthRippleController;)V

    goto :goto_2

    .line 196
    :cond_6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->invalidCommand(Ljava/io/PrintWriter;)V

    return-void

    :cond_7
    const-string p2, "fingerprint"

    .line 183
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 204
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->invalidCommand(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 185
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-virtual {p2}, Lcom/android/systemui/biometrics/AuthRippleController;->getFingerprintSensorLocation()Landroid/graphics/PointF;

    move-result-object p2

    const-string v0, "fingerprint ripple sensorLocation="

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/AuthRippleController;->access$showRipple(Lcom/android/systemui/biometrics/AuthRippleController;Landroid/hardware/biometrics/BiometricSourceType;)V

    :goto_2
    return-void
.end method

.method public help(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pw"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Usage: adb shell cmd statusbar auth-ripple <command>"

    .line 210
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Available commands:"

    .line 211
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  fingerprint"

    .line 212
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  face"

    .line 213
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  custom <x-location: int> <y-location: int>"

    .line 214
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

    .line 218
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;->help(Ljava/io/PrintWriter;)V

    return-void
.end method
