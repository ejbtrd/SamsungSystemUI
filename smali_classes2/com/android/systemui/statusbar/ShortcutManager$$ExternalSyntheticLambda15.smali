.class public final synthetic Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/ShortcutManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/ShortcutManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/statusbar/ShortcutManager;

    iput p2, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda15;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/statusbar/ShortcutManager;

    iget v1, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda15;->f$1:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->$r8$lambda$D0Lb1DGPovDnl1-Po2HRBKtU21E(Lcom/android/systemui/statusbar/ShortcutManager;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
