.class Lcom/android/systemui/settings/multisim/MultiSIMController$6;
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

    .line 356
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$6;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 358
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$6;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMController;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$6;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$700(Lcom/android/systemui/settings/multisim/MultiSIMController;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 359
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$6;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    return-void
.end method
