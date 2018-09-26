RENAME TABLE `gsb_frais`.`Visiteur` TO `gsb_frais`.`Utilisateur`;

--
-- Base de données :  `gsb_frais`
--

-- --------------------------------------------------------

--
-- Structure de la table `Visiteur`
--

CREATE TABLE `Visiteur` (
  `id` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Visiteur`
--
ALTER TABLE `Visiteur`
  ADD PRIMARY KEY (`id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Visiteur`
--
ALTER TABLE `Visiteur`
  ADD CONSTRAINT `FK_VISITEUR_UTILISATEUR` FOREIGN KEY (`id`) REFERENCES `Utilisateur` (`id`);


--
-- Structure de la table `Comptable`
--

CREATE TABLE `Comptable` (
  `id` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Comptable`
--
ALTER TABLE `Comptable`
  ADD KEY `FK_COMPTABLE_UTILISATEUR` (`id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Comptable`
--
ALTER TABLE `Comptable`
  ADD CONSTRAINT `FK_COMPTABLE_UTILISATEUR` FOREIGN KEY (`id`) REFERENCES `Utilisateur` (`id`);
  
--
-- Ajout des ID des utilisateur dans visiteur car ils étaient tous visiteur avant
INSERT INTO Visiteur(id) SELECT id FROM Utilisateur
--
