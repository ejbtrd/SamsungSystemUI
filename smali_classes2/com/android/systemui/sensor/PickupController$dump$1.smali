.class final Lcom/android/systemui/sensor/PickupController$dump$1;
.super Ljava/lang/Object;
.source "PickupController.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sensor/PickupController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/systemui/sensor/SensorController$SensorListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController$dump$1;->$pw:Ljava/io/PrintWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/systemui/sensor/SensorController$SensorListener;)V
    .locals 1
    .param p1    # Lcom/android/systemui/sensor/SensorController$SensorListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$dump$1;->$pw:Ljava/io/PrintWriter;

    const-string v0, "      lisenter="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 157
    check-cast p1, Lcom/android/systemui/sensor/SensorController$SensorListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/sensor/PickupController$dump$1;->accept(Lcom/android/systemui/sensor/SensorController$SensorListener;)V

    return-void
.end method
