.class public final synthetic Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/systemui/media/MediaData;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->$r8$lambda$XyKvp3lm35XsfNvqXj8GZ5VUX0Y(Ljava/util/ArrayList;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    return-void
.end method
