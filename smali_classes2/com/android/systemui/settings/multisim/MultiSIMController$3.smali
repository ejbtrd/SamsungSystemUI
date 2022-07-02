.class Lcom/android/systemui/settings/multisim/MultiSIMController$3;
.super Landroid/database/ContentObserver;
.source "MultiSIMController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/multisim/MultiSIMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$3;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 327
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$3;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-static {p1, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$500(Lcom/android/systemui/settings/multisim/MultiSIMController;Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PreferedVoiceObserver onChange():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$3;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiSIMController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
