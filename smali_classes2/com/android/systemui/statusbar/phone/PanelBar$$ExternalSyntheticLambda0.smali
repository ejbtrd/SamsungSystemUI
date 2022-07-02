.class public final synthetic Lcom/android/systemui/statusbar/phone/PanelBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/PanelBar;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PanelBar;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/PanelBar;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelBar$$ExternalSyntheticLambda0;->f$1:F

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar$$ExternalSyntheticLambda0;->f$1:F

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->$r8$lambda$TF6D9JyOAU-lzVzlhlaS-xCKwMw(Lcom/android/systemui/statusbar/phone/PanelBar;F)Z

    move-result p0

    return p0
.end method
