<?php
namespace PRENOTAZIONE;

class Reservation {
    private string $cf;
    private string $data;
    private bool $motoBool;
    private ?int $moto;
    private bool $attrezzatura;

    function __construct(string $cf, string $data, bool $motoBool, ?int $moto, bool $attrezzatura) {
        $this->cf = $cf;
        $this->data = $data;
        $this->motoBool = $motoBool;
        $this->moto = $moto;
        $this->attrezzatura = $attrezzatura;
    }

    public function getCF(): string {
        return $this->cf;
    }


    public function getData(): string {
        return $this->data;
    }

    public function getMotoBool(): bool {
        return $this->motoBool;
    }

    public function getMoto(): ?int {
        return $this->moto;
    }

    public function getCilindrata(): string {
        return $this->ccMoto;
    }

    public function getAttrezzatura(): bool {
        return $this->attrezzatura;
    }
}
?>