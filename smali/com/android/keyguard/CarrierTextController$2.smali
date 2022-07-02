.class Lcom/android/keyguard/CarrierTextController$2;
.super Ljava/lang/Object;
.source "CarrierTextController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CarrierTextController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierTextController;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextController$2;->this$0:Lcom/android/keyguard/CarrierTextController;

    invoke-static {p0}, Lcom/android/keyguard/CarrierTextController;->access$300(Lcom/android/keyguard/CarrierTextController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/CarrierText;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->updateCarrierTextSize()V

    return-void
.end method
