.class public interface abstract Lcom/android/systemui/statusbar/commandline/Command;
.super Ljava/lang/Object;
.source "CommandRegistry.kt"


# virtual methods
.method public abstract execute(Ljava/io/PrintWriter;Ljava/util/List;)V
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
.end method
