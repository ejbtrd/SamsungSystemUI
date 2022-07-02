.class Lcom/android/systemui/wmshell/WMShell$1;
.super Ljava/lang/Object;
.source "WMShell.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wmshell/WMShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wmshell/WMShell;


# direct methods
.method constructor <init>(Lcom/android/systemui/wmshell/WMShell;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$1;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$1;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShell;->access$000(Lcom/android/systemui/wmshell/WMShell;)Lcom/samsung/android/systemui/multistar/MultiStarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->onLongPressRecents()V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 196
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wmshell/WMShell$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
