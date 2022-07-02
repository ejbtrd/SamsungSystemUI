.class final Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;
.super Ljava/lang/Object;
.source "MainControlAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->actionResponse(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $controlId:Ljava/lang/String;

.field final synthetic $response:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;->$controlId:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;->$response:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 266
    invoke-static {}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->access$getControlViewHolders$cp()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;->$controlId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$actionResponse$1;->$response:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->actionResponse(I)V

    :goto_0
    return-void
.end method
