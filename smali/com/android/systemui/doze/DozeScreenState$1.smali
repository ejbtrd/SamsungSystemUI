.class Lcom/android/systemui/doze/DozeScreenState$1;
.super Ljava/lang/Object;
.source "DozeScreenState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeScreenState;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeScreenState;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeScreenState;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenState$1;->this$0:Lcom/android/systemui/doze/DozeScreenState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 168
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenState$1;->this$0:Lcom/android/systemui/doze/DozeScreenState;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeScreenState;->access$000(Lcom/android/systemui/doze/DozeScreenState;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/PluginAODManager;->enableTouch(Z)V

    return-void
.end method
